require 'carrierwave'
require 'fog/aws'
require_relative '../../app/uploaders/wellspring/image_uploader'

CarrierWave.configure do |config|
	config.fog_credentials = {
		provider:              'AWS',
		aws_access_key_id:     ENV["AWS_ACCESS_PUBLIC"],
		aws_secret_access_key: ENV["AWS_ACCESS_PRIVATE"],
		region:                ENV["AWS_REGION"]
	}

	config.fog_directory  = 'dante-test'
	config.fog_public     = false
end