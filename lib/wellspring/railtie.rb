module WellSpring
  class Railtie < Rails::Railtie
    rake_tasks do
      spec = Gem::Specification.find_by_name 'wellspring'
      load "#{spec.gem_dir}/lib/tasks/wellspring.rake"
    end
  end
end
