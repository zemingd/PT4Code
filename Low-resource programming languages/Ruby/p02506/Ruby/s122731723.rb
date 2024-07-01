#!/usr/local/bin/ruby
find=gets.chomp.downcase
b=0
STDIN.each do |line|
 line.split(" ").each do |x|
    if x=="END_OF_TEXT"
      break
    elsif x=="#{find}"
      b+=1
    end
  end
end
puts "#{b}"