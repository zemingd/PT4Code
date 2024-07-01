n = gets.chomp.to_i
array = gets.split(' ').map(&:to_i)
 
if array.include?(0)
  puts 0
  exit
end

num = 10 ** 18
counter = 0
answer = 1

n.times do |i|
  answer = answer * array[i]
  if num <= answer
    puts -1
    exit
  end
end

 
if num <= answer
  puts -1
else
  print answer
end