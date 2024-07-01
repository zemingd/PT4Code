ary = gets.split.map(&:to_i)

a = ary[0]
b = ary[1]
c = ary[2]

3.times do
  if a == b + c
    puts 'Yes'
    exit
  elsif b == a + c
    puts 'Yes'
    exit
  elsif c == a + b
    puts 'Yes'
    exit
  else
    puts 'No'
    exit
  end
end