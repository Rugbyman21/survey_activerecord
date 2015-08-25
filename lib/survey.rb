class Survey < ActiveRecord::Base
  has_many(:questions)
  validates(:description, {:presence => true, :length => {:maximum => 50}})
  before_save(:upcase_description)


private

  define_method(:upcase_description) do
    self.description = (description().upcase())
  end
end
