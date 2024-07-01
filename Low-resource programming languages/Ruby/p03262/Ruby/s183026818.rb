def gcd(a,b)
  a,b = b,a%b while b > 0
  a
end

while line = gets
  n, x=line.chomp.split(" ").map(&:to_i)

  data = gets.chomp.split(" ").map(&:to_i)
  data << x
  data.sort!

  diff = data[1] - data[0]
  (data.size - 1).times do |i|
    diff = gcd(diff, data[i+1] - data[i])
  end
  puts diff
end

