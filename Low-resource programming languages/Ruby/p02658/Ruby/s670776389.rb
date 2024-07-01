a = gets.chomp.to_i
array = gets.split(' ').map(&:to_i)

if array.include?(0)
  puts 0
  exit
end

counter = 0
answer = 1

while a > counter
  answer = answer * array.pop
  if 10 ** 18 <= answer
    puts -1
    exit
  end
  counter += 1
end

if 10 ** 18 <= answer
  puts -1
else
  print answer
end
