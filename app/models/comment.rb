class Comment
  include Mongoid::Document
  field :name, type: String
  field :text, type: String
  field :link_image, type: String
  field :link_video, type: String
  field :created_at, type: DateTime
  field :sub_comments, type: Array, default: ['1', '2', '3']
end
