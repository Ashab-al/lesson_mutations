class MutationGenerator < Rails::Generators::NamedBase
  argument :attributes, type: :array, default: [], banner: "field:type field:type"

  source_root File.expand_path("templates", __dir__)

  def create_mutation_file 
    template 'mutation.rb', File.join("app/mutations/#{file_name.split('_').last}s", 
    class_path, 
    "#{file_name.split('_')[..-2].join('_')}.rb")
  end
end
