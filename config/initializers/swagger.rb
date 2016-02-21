class Swagger::Docs::Config
  def self.base_api_controller; ApiController end

  def self.transform_path(path, api_version)
    "apidocs/#{path}"
  end
end

host = ENV['IP'] || 'localhost'
port = ENV['PORT'] || '3000'
apiUrl = "http://#{host}:#{port}"

Swagger::Docs::Config.register_apis({
                                        '1.0' => {
                                            controller_base_path: '',
                                            api_file_path: 'public/apidocs',
                                            base_path: apiUrl,
                                            clean_directory: true,
                                            :attributes => {
                                                :info => {
                                                   "title" => "Project Unify API",
                                                   "description" => "This describes the resources that make up the official Project Unify public API"
                                              }
                                            }
                                        }
                                    })