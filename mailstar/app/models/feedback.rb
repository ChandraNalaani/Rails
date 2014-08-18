class Feedback
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  
  validates :subject, presence: true
  validates :body, presence: true
  
  attr_accessor :subject, :body, :email
  
  def initialize(attributes = {})
    attributes.each do |key, value|
      send("#{key}=", value)
    end
  end
  
  def persisted?
    false
  end
end