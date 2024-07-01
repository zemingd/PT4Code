def bit_count(i, b)
  ret = 0
  until(i == 0) do
    ret += 1 if i[0] == b
    i >>= 1
  end
  ret
end

N = gets.to_i
A = Hash.new{|h, k| h[k] = []}
N.times{|i|
  n = gets.to_i
  n.times{
    A[i+1] << gets.chomp.split(" ").map(&:to_i)
  }
}

ans = 0
(1...2**N).each{|i|
  next if bit_count(i, 1) <= ans
  h = Hash.new{|h, k| h[k] = []}
  (1..N).each{|n|
    h[n] << i[n-1]
    A[n].each{|a| h[a[0]] << a[1]} if i[n-1] == 1
  }
  ans = bit_count(i, 1) if (1..N).to_a.all?{|n| h[n].combination(2).all?{|a, b| a == b}}
}

puts ans
