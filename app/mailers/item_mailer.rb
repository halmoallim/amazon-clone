class ItemMailer < ApplicationMailer

    def new_item_mail
        @item = params[:item]

        mail(to: User.all.pluck(:email) , subject:"a new item added, check it now")
    end

end
