S = gets

array = 'a'.upto('y').to_a

flag = 0
(0..26).each do |i|
  if array[i] == S
    flag = 1
  elsif flag == 1 and i != 25
    puts array[i]
    break
  elsif i == 25
    puts "z"
    break
  end
end