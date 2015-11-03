# Wellspring

Wellspring is a flexible CMS engine for Rails apps. You can use it to create any type of content website (blogs, magazines, portfolios etc.).

This is the source code for my tutorial: [How to Build a CMS in Ruby on Rails](http://pchm.co/tutorial-how-to-build-a-cms-in-ruby-on-rails/).

## Getting Started

```ruby
# Gemfile
gem 'wellspring', github: 'dante/wellspring', branch: 'aws-s3-production'
```

```
$ bundle install
```

This version depends on carrierwave and fog to upload images to a cloud provider.

Create a `config/initializer/carrierwave.rb` with the following settings:

```ruby
CarrierWave.configure do |config|
  config.fog_credentials = {
    :aws_access_key_id => ENV['AWS_ACCESS_KEY_ID'], # change accordingly
    :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'], # change accordingly
    :provider => 'AWS' # or change this to your preferred provider
  }

  config.fog_directory = 'directoryname'
  config.fog_public = true
end
```

## License

Wellspring is released under the [MIT License](http://www.opensource.org/licenses/MIT).
