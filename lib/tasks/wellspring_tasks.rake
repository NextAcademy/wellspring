# desc "Explaining what the task does"
# task :wellspring do
#   # Task goes here
# end

namespace :wellspring do
  desc "Installing Wellspring..."

  file :install do |t|
    sh "touch config/initializer/carrierwave.rb"
    echo "CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS', # or use your preferred provider
    aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'], # or use your preferred provider
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'], # or use your preferred provider
    region:                ENV['AWS_REGION'] # or use your preferred provider
  }

  config.fog_directory  = 'directoryname'
  config.fog_public     = false
end >> config/initializer/carrierwave.rb"
  end

end
