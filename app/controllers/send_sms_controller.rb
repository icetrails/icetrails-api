class SendSmsController < ApplicationController
 # GET /send_sms
  # GET /send_sms.json
  def index
  end

  # POST /send_sms
  # POST /send_sms.json
  def create
    message = send_sm_params[:message]
    destination = send_sm_params[:destination]


    if SendSMS.send_message(message, destination)
      redirect_to send_sms_path, notice: 'Send sms was successfully created.'
    else
      redirect_to send_sms_path, notice: 'Could not send'
    end
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def send_sm_params
      params.permit(:message, :destination)
    end

end
