class Course < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "end_date", "id", "id_value", "name", "start_date", "type_course", "updated_at"]
  end
  
  def self.ransackable_associations(auth_object = nil)
    ["subjects"]
  end
  validates :name, presence: true
   has_many :subjects, dependent: :destroy

end
