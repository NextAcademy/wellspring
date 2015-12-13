module WellSpring
  class Railtie < Rails::Railtie
    rake_tasks do
      load "tasks/wellspring.rake"
    end
  end
end
