class ProjectUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
