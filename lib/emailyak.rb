require 'net/http'
require 'net/https'
require 'json'

module EmailYak
  
  def self.send_email receiver, subject, textBody, params
    
    htmlBody = params[:htmlBody]
    sender = params[:sender] || EMAILYAK_CONFIG['default_sender']
    key = params[:key] || EMAILYAK_CONFIG['private_key']
    
    http = Net::HTTP.new('api.emailyak.com', 443)
    http.use_ssl = true
    path = "/v1/#{key}/json/send/email/"
    

    fields = { 'From' => sender, 
               'To' => receiver,
               'Subject' => subject }
               
    fields['TextBody'] = textBody
    fields['HtmlBody'] = htmlBody unless htmlBody.nil?
    
    data = fields.to_json
    
    headers = {
      'Content-Type' => 'application/json'
    }
    
    resp, data = http.post(path, data, headers)
    
    JSON.parse data
  end
end

EmailYak::EMAILYAK_CONFIG = YAML.load_file(Rails.root.join('config', 'emailyak_config.yml'))[Rails.env] if defined?(Rails)
