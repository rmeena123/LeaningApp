class Lesson < ApplicationRecord

   def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "description", "lesson_type", "name", "subject_id", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["subject"]
  end
	belongs_to :subject
end
