# Wellspring

Wellspring is a flexible CMS engine for Rails apps. You can use it to create any type of content website (blogs, magazines, portfolios etc.).

## Getting Started

### Step One
```ruby
# Gemfile
gem 'wellspring', github: 'dante/wellspring', branch: 'production'
```

### Step Two
```
$ bundle install
$ rake wellspring:install
```

### Step Three
Tweak `config/initializer/carrierwave.rb` with your desired configuration.


## Dependencies

*Wellspring depends on carrierwave and fog to upload images to a cloud provider.*

## Acknowledgement

Wellspring was first authored by [Piotr Chmolowski](https://github.com/pch/).

It was first intended to be a tutorial to teach Ruby-on-Rails developers on how to build a reusable CMS in any Rails projects.

We found this to be one of the most flexible and lightweight CMS solution for Rails and have therefore decided to work on it further!

Find the tutorial here: [How to Build a CMS in Ruby on Rails](http://pchm.co/tutorial-how-to-build-a-cms-in-ruby-on-rails/).


## License

Wellspring is released under the [MIT License](http://www.opensource.org/licenses/MIT).
