module CountOptions
  # print byte count
  def self.count_bytes(file_path)
    byte_count = File.size(file_path)
    puts "#{byte_count} #{file_path}"
  end

  # print line count
  def self.count_lines(file_path)
    line_count = File.foreach(file_path).count
    puts "#{line_count} #{file_path}"
  end
end
