a = Array.new(3){ gets.to_s.split.map{|i|i.to_i} }
n = gets.to_s.to_i
b = Array.new(n){ gets.to_s.to_i }

c = Array.new(3){ Array.new(3){ false } }
b.each do |k|
  3.times do |i|
    3.times do |j|
      c[i][j] = true if a[i][j] == k
    end
  end
end

f = false
3.times{ |i| f = true if c[i][0] && c[i][1] && c[i][2] }
3.times{ |j| f = true if c[0][j] && c[1][j] && c[2][j] }
f = true if c[0][0] && c[1][1] && c[2][2]
f = true if c[0][2] && c[1][1] && c[2][0]

puts f ? "Yes" : "No"