N, D = gets.chomp.split(" ").map(&:to_i)
X = []
N.times{
  X << gets.chomp.split(" ").map(&:to_i)
}

def is_integer(y, z)
  tmp = 0
  y.zip (z){|yi, zi| tmp += (yi - zi) ** 2}
  tmp == (Math.sqrt(tmp).floor) ** 2
end

ans = 0
(0..N - 2).each{|i|
  (i + 1..N - 1).each{|j|
    ans += 1 if is_integer(X[i], X[j])
  }
}

puts ans
