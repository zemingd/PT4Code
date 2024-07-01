MOD = 10 ** 9 + 7

n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
bit = a.max.to_s(2).length
a.map!{|x|
  x.to_s(2)
}
(bit-1).times{
  for i in 0 .. n-1
    if a[i].length < bit
      a[i] = "0" + a[i]
    end
  end
}

ans = 0
num0 = Array.new(bit,0)
num1 = Array.new(bit,0)
for i in 0..n-1
  for j in 0..bit-1
    if a[i][j] == "1"
      num1[j] += 1
    else
      num0[j] += 1
    end
  end
end

for i in 0..bit-1
  ans += ((num0[i] * num1[i]) * (2 ** (bit-1-i))) % MOD
end
puts ans % MOD