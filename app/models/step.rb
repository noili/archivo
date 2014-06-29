class Step < ActiveRecord::Base
  belongs_to :office
  belongs_to :person
  belongs_to :record
end
