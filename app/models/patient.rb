class Patient < ApplicationRecord
  has_one :default_process_entry
  has_many :absences
  accepts_nested_attributes_for :default_process_entry
end
