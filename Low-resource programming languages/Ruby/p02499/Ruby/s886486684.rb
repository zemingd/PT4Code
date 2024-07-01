 alpha = ("a".."z").to_a
 str = ""
 while (input = gets) != nil
   input.strip!
   str += input
   p str
 end
str.downcase!
alpha.each do |i|
  puts "#{i} : #{str.count(i)}"
end