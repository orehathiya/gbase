class Graph < ActiveRecord::Base
  attr_accessible :title, :description, :chart_type, :data

  validates :title, :data, :presence => true
  validate :valid_json

  def valid_json 
    begin
      JSON.parse(data)
    rescue JSON::ParserError
      errors.add(:data, "is invalid json format")
    end
  end
end
