class V1 < Grape::API
  prefix "api"
  format :json
  default_format :json
  default_error_status :"500"
  version 'v1', using: :path

  mount Images
end
