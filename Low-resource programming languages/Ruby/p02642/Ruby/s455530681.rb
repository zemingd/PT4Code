n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
arr = [a[0]]
ans = 0
ans += 1 if n > 1 && a[0] != a[1]
for i in 1..n-2
  if arr.all?{|x| a[i] % x != 0}
    arr.push(a[i])
    ans += 1 if n > i+1 && a[i] != a[i+1]
  end
end
ans += 1 if arr.all?{|x| a[n-1] % x != 0}
puts ans