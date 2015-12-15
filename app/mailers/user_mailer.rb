class UserMailer < ActionMailer::Base
    default from: "Form Lifting <info@formlifting.com>"

    def signup_email(user)
        @user = user
        @twitter_message = "What's your hip drive? #FormLifting @FormLifting"

        mail(:to => user.email, :subject => "Thanks for signing up!")
    end
end
