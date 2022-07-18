class PagesController < ApplicationController
    def home
    end

    def contact
        if params[:email]
            ContactUsMailer.send_contact_us_email(params[:name], params[:num], params[:email], params[:message]).deliver_now
        end
    end
end
