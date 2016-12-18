require 'carrierwave/orm/activerecord'
CarrierWave.configure do |config|
	
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => 'AKIAJLD5CRM4XJ3VLNXQ',
      :aws_secret_access_key  => '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',
      :region                 => 'ap-southeast-1',
       path_style: true
     # :path_style => true
 # Change this for different AWS region. Default is 'us-east-1'
  }
  config.storage = :fog
  config.fog_directory  = 'sandeepawsbucket'
 # config.fog_public     = false                            
#config.fog_attributes = {'Cache-Control'=>"max-age=#{365.day.to_i}"} 
end