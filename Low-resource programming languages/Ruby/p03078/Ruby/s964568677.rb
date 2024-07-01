x,y,z,k = gets.split.map &:to_i
a = gets.split.map{|s|s.to_i}.sort
b = gets.split.map{|s|s.to_i}.sort
c = gets.split.map{|s|s.to_i}.sort

# a,b,cの長さはx,y,z

last = nil
while a.size * b.size * c.size > 4000000
  [a,b,c].max_by{|i|i.size == 1 ? [-10000000000] : [-i[0], i[1] - i[0], i.size]}.shift(1)
end

result = []
a.map{|i|
  b.map{|j|
    c.map{|k|
      result << i+j+k
    }
  }
}

result.sort!.reverse!

k.times do |i|
  puts result[i]
end
