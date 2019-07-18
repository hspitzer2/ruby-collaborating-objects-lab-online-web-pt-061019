class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.children(self.path).collect {|file|file.gsub("#{path}"," ")}
  end

  def import
    files.each {|files| Song.new_by_file_name}
  end
end
