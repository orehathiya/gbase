class Graph < ActiveRecord::Base
  attr_accessible :description, :title, :chart_type, :data

  validate :valid_json

  def valid_json 
    begin
      JSON.parse(data)
    rescue JSON::ParserError
      errors.add(:data, "is invalid json format")
    end
  end
end
