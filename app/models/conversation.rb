class Conversation < ApplicationRecord
  belongs_to :sender, :foreign_key => :sender_id, class_name: "User"
  belongs_to :receiver, :foreign_key => :receiver_id, class_name: "User"
  belongs_to :booking

  has_many :messages, dependent: :destroy

end
