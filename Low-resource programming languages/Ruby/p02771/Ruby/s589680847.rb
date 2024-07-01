array = gets.chomp!.split(" ").map(&:to_i)
x = array.length-array.uniq.length

if x==1
  puts "Yes"
else
  puts "No"
end