n = gets.chomp.to_i
array = gets.split(' ')
 
if array.include?("0")
  puts 0
  exit
end
 
num = 10 ** 18
answer = 1
 
n.times do |i|
  answer = answer * array[i].to_i
  if num < answer
    puts "-1"
    exit
  end
end
 
puts answer