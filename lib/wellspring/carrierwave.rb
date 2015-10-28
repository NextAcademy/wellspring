require 'carrierwave'
require 'fog/aws'
require_relative '../../app/uploaders/wellspring/image_uploader'

CarrierWave.configure do |config|
	config.fog_credentials = {
		provider:              'AWS',
		aws_access_key_id:     ENV["AWS_ACCESS_KEY_ID"],
		aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
		region:                ENV["AWS_REGION"]
	}

	config.fog_directory  = 'dante-test'
	config.fog_public     = false
end