def bit_count(i, b)
  ret = 0
  until(i == 0) do
    ret += 1 if i[0] == b
    i >>= 1
  end
  ret
end

N = gets.to_i
H = []
U = []
N.times{|i|
  n = gets.to_i
  h = 0
  u = 0
  n.times{
    x, y = gets.chomp.split(" ").map(&:to_i)
    y == 1 ? (h |= 1 << (x - 1)) : (u |= 1 << (x - 1))
  }
  H << h; U << u
}

ans = 0
(1...2**N).each{|i|
  next if bit_count(i, 1) <= ans
  h, u = [0, 0]
  (1..N).each{|n|
    (h |= H[n - 1]; u |= U[n - 1]) if i[n - 1] == 1
  }
  ans = bit_count(i, 1) if (h & ~i == 0)  && (u & i == 0)
}

puts ans
