class GameSerializer < ActiveModel::Serializer
  attributes :id, :duration, :user_id
  belongs_to :user
end
