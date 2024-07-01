@s = gets
str_array = ["dream","dreamer","erase","eraser"]

(0..3).each do |a|
  (0..3).each do |b|
    next if a == b
    if  "#{str_array[a]}#{str_array[b]}" == @s
	  puts "YES"
	  exit
	end
  end
end

puts "NO"