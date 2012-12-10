class GraphData < ActiveRecord::Base
  # attr_accessible :title, :body
  def self.save(id, upload)
    directory = "public/data"
    # create the file path
    path = File.join(directory, '%s.json' % id)
    # write the file
    File.open(path, "wb") { |f| f.write(upload['datafile'].read) }
  end

  def self.find(id)
    directory = "public/data"
    # create the file path
    path = File.join(directory, '%s.json' % id)
    File.read(path)
  end
end
