def judge(ans, d)
  str = ans.to_s
  len = str.length

  flg = false
  for i in 0..len-1
    if d.include?(str[i].to_i)
      flg = true
    end
  end
  flg
end

n,k = gets.chomp.split(" ").map(&:to_i)
d = gets.chomp.split(" ").map(&:to_i)

ans = n

while judge(ans, d)
  ans += 1
end

print ans