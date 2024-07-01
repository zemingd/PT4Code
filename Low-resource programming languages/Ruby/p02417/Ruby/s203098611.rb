sentence = gets(nil).chomp.downcase.split("")

("a".."z").each do |alphabet|
  puts "#{alphabet} : #{sentence.count(alphabet)}"
end
