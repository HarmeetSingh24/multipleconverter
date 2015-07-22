require 'rubygems'
require 'pdf/reader'
puts "enter the directory name"
a = gets.chomp
Dir.open a do |dir|
dir.each do |file|
if file.include?('pdf')
  file1=file.split('.')
  cmd="pdftotext -layout -r 300 #{a+"/"+file1[0]}.pdf #{a+"/"+file1[0]}.txt"
  system(cmd)
    end
    end
end


