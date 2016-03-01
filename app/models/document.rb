class Document
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :text, type: String
  field :link_text, type: String 
  field :link_image, type: String
  field :link_video, type: String
  field :sub_comments, type: Array, default: ['1', '2', '3']
  mount_uploader :image, DocumentImageUploader
  mount_uploader :video, VideoUploader

  validates :name, presence: true
  validates :text, presence: true
end
