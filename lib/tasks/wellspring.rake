# desc "Explaining what the task does"
# task :wellspring do
#   # Task goes here
# end

desc "Installs Wellspring..."

file 'wellspring:install' do |t|
  spec = Gem::Specification.find_by_name 'wellspring'
  cp "#{spec.gem_dir}/lib/templates/carrierwave.rb", "#{Dir.pwd}/config/initializers/carrierwave.rb"

  puts "Created config/initializers/carrierwave.rb"
  puts "Configure config/initializers/carrierwave.rb"

end
