Motion::Project::App.setup do |app|
  parent = File.join(File.dirname(__FILE__), '..')
  files = Dir.glob(File.join(parent, "motion/**/*.rb"))
  app.files += files
end