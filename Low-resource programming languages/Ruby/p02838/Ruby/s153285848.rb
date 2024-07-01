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
for i in 0..bit-1
  num0 = 0
  num1 = 0
  for j in 0..n-1
    if a[j][i] == "1"
      num1 += 1
    else
      num0 += 1
    end
  end
  ans += ((num0 * num1) * (2 ** (bit-1-i))) % MOD
end

puts ans % MOD