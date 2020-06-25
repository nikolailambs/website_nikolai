class Project < ApplicationRecord
  mount_uploader :image, ProjectUploader
end
