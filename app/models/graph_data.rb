class GraphData < ActiveRecord::Base
  # attr_accessible :title, :body
  def self.save(id, upload)
    directory = "public/data"
    # create the file path
    path = File.join(directory, '%s.json' % id)
    # write the file
    File.open(path, "wb") { |f| f.write(upload['datafile'].read) }
  end
end
