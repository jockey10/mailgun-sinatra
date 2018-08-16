require 'sinatra'
require 'rest-client'
require 'mailgun-ruby'
require 'json'

post '/send' do
  @domain = ENV["DOMAIN"]
  @to = params[:to]
  @from = "Mailgun Sandbox <mailgun@#{@domain}.mailgun.org>"
  @subject = params[:subject]
  @html = params[:html]

  # print params
  logger.info { "Sending message" }
  logger.info { "to: #{@to}" }
  logger.info { "from: #{@from}" }
  logger.info { "subject: #{@subject}" }
  logger.info { "html: #{@html}" }

  mg_client = Mailgun::Client.new ENV["APIKEY"]
  message_params = {:from => "mailgun@#{@domain}",
                    :to => @to,
                    :subject => @subject,
                    :html => @html}
  mg_client.send_message @domain, message_params
end
