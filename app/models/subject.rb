class Subject < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    ["course_id", "created_at", "id", "id_value", "name", "subject_type", "updated_at"]
  end

   def self.ransackable_associations(auth_object = nil)
    ["course", "lessons"]
  end


   # def self.ransackable_associations(auth_object = nil)
   #  ["subjects"]
   # end

   belongs_to :course
    has_many :lessons, dependent: :destroy

     accepts_nested_attributes_for :lessons, allow_destroy: true
end
