require 'carrierwave'
require 'fog/aws'

CarrierWave.configure do |config|
	config.fog_credentials = {
		provider:              'AWS',
		aws_access_key_id:     '',
		aws_secret_access_key: '',
		region:                '',
		endpoint:              ''
	}

	if Rails.env.development? || Rails.env.test?
		config.storage = :file
		config.root = "#{Rails.root}/tmp"
	else
		config.storage = :fog
	end

	config.fog_directory  = ''
	config.fog_public     = false
	config.fog_attributes = {}
end