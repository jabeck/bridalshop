class Image < ActiveRecord::Base
  belongs_to :item
  has_attachment :content_type => :image, 
                 :storage => :file_system, 
                 :path_prefix => 'public/images',
                 :thumbnails => { :thumb => '180' }
end
