class ContactController < ApplicationController
  # GET /contact
  def index
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # POST /contact
  def send_email
    respond_to do |format|
      ContactMailer.contact_email(params).deliver
      format.html # send_email.html.erb
    end
  end
end
