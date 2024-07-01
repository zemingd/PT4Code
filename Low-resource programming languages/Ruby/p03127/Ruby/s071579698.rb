n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
while n > 1
  cnt = 0
  min = a[0]
  flg = false
  1.upto(n-1) do |i|
    flg = true if a[i] != a[i] % min
    a[i] = a[i] % min
    if a[i] == 0
      cnt += 1
    end
  end
  n = n - cnt
  a = a.sort[cnt..-1]
  if !flg
    break
  end
end
puts a[0]