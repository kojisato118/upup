class V1::Images < Grape::API
  resources :images do
    desc 'imageをアップロードする。保存はしないが'
    params do
      requires :image, type: Rack::Multipart::UploadedFile, desc: 'image file'
    end

    post do
      {
        result:  'ok',
        'image': params['image']['filename']
      }
    end
  end
end
