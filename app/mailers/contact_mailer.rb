class ContactMailer < ActionMailer::Base
  default :to => "ma12088@shibaura-it.ac.jp"

  def contact_email(params)
    @user = params
    mail(:from => params[:user][:address])
  end
end
