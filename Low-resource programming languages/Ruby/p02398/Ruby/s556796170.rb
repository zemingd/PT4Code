tmp = gets.chomp.split.map(&:to_i)
a = tmp[0]
b = tmp[1]
c = tmp[2]

count = 0
p "a = #{a}, b = #{b}, c = #{c}"


times=b-a+1
times.times do
  if c % a == 0
    count += 1
  end
  a += 1
end
puts count
p "a = #{a}"