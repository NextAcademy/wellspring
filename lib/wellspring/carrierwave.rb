require 'carrierwave'
require 'fog/aws'
require_relative '../../app/uploaders/wellspring/image_uploader'

CarrierWave.configure do |config|
	config.fog_credentials = {
		provider:              'AWS',
		aws_access_key_id:     ENV[],
		aws_secret_access_key: ENV[],
		region:                ENV[]
	}

	config.fog_directory  = 'dante-test'
	config.fog_public     = false
end