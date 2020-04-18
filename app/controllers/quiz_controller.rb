class QuizController < ApplicationController

    def index
        if params[:timervalue].present?

          if params[:timervalue].length > 4
            flash[:notice] = ("Invalid timer value. Too many characters in timer value.")
            redirect_to selquiz_index_path and return
          else
            @timervalue = params[:timervalue].to_i
            if not @timervalue.to_s == params[:timervalue]
              flash[:notice] = ("Invalid timer value. Please enter a valid numeric value (don't use letters or decimals).")
              redirect_to selquiz_index_path and return
            else
              if @timervalue <= 0
                flash[:notice] = ("Invalid timer value. Please set timer value to be at least 1 minute.")
                redirect_to selquiz_index_path and return
              else
                if @timervalue > 1440
                  flash[:notice] = ("Invalid timer value. Timer value is too high.")
                  redirect_to selquiz_index_path and return
                else
                  @timervalue_seconds = @timervalue*60
                end
              end
            end
          end
        else
          flash[:notice] = ("Please enter timer value")
          redirect_to selquiz_index_path and return
        end

        if params[:quizlimit].present?
            if not QuestionBank.quizLimit.include?(params[:quizlimit])
                if params[:quizlimit].to_i<20
                    params[:quizlimit] = "20"
                elsif params[:quizlimit].to_i<40
                    params[:quizlimit] = "40"
                elsif params[:quizlimit].to_i<60
                    params[:quizlimit] = "60"
                else
                    params[:quizlimit] = "All"
                end
            end
            if params[:quizlimit] == "All"
                @questions= QuestionBank.where(reviewStatus: "Approved")
                @questions =  @questions.shuffle

            else
                @questions= QuestionBank.where(reviewStatus: "Approved").sample(params[:quizlimit].to_i)
                @questions =  @questions.shuffle
            end
        else
            flash[:notice] = ("Select at least one option")
            redirect_to selquiz_index_path and return
        end
    end

end
