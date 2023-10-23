require "fileutils"

def delete_files_with_character(directory, pattern_to_match)
  Dir.foreach(directory) do |file_name|
    next if file_name == "." || file_name == ".."

    file_path = File.join(directory, file_name)
    if File.directory?(file_path)
      delete_files_with_character(file_path, pattern_to_match)
    elsif File.file?(file_path) && file_path =~ pattern_to_match
      puts "Deleting file: #{file_path}"
      File.delete(file_path)
    end
  end
end

# 指定要遍历的文件夹路径和要查找并删除的字符
directory_path = "/Users/michael/Downloads/jekyll/gakky/wp-content"
pattern_to_match = /(\d)x(\d)/

delete_files_with_character(directory_path, pattern_to_match)
