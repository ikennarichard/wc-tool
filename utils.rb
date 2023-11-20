module CountOptions
  # print byte count
  def self.count_bytes(file_path)
    if File.exist?(file_path)
      byte_count = File.size(file_path)
      puts "#{byte_count} #{file_path}"
    else
      puts "ccwc: #{file_path}: No such file or directory"
    end
  end


end