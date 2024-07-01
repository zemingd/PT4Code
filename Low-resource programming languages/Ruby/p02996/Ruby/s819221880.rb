n = gets.to_i
li = []
flag = true
n.times do
  a,b = gets.split.map(&:to_i)
  c = b - a
  if c < 0
    puts 'No'
    exit
  end
  li << [a,b,c]
end

li = li.sort { |(a1,b1),(a2,b2)| b1 <=> b2 }

sum = 0
li.each do |a,b|
  sum += a
  if sum > b
    flag = false
    break
  end
end

if flag
  puts 'Yes'
else
  puts 'No'
end