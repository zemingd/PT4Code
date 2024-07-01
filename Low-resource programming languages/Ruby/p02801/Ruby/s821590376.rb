S = gets

array = 'a'.upto('y').to_a

flag = 0
(0..26).each do |i|
  if array[i] == S
    flag = 1
  elsif flag == 1
    puts array[i]
    flag = 0
  end
end