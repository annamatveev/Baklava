class Photo < ActiveRecord::Base
  belongs_to :user, class_name: "User"
  belongs_to :uploader, class_name: "User"
end
