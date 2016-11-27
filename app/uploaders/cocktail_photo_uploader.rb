# encoding: utf-8

class CocktailPhotoUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  process convert: 'jpg'
  
  version :bright_face do
    cloudinary_transformation effect: "brightness:10", radius: 20,
    width: 150, height: 150, crop: :thumb
  end

end
