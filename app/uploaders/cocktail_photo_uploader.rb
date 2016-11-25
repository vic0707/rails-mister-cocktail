# encoding: utf-8

class CocktailPhotoUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  process convert: 'jpg'
  
  version :bright_face do
    cloudinary_transformation effect: "brightness:30", radius: 20,
    width: 150, height: 150, crop: :thumb, gravity: :face
  end

end
