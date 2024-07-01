b = []
3.times{ b << gets.split.map(&:to_i) }
gets
h = []
while n = gets
  h << n.chomp.to_i
end
3.times{|i|
  3.times{|j|
    b[i][j] = 0 if h.include?(b[i][j])
  }
}
ans = "No"
b.each{|r|
  ans = "Yes" if r.inject(:+) == 0
}
3.times{|i|
  ans = "Yes" if b[0][i] + b[1][i] + b[2][i] == 0
}
ans = "Yes" if b[0][0] + b[1][1] + b[2][2] == 0
ans = "Yes" if b[0][2] + b[1][1] + b[2][0] == 0
puts ans