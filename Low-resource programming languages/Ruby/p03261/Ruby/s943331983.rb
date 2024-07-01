n = gets.to_i
a = n.times.map{
    gets.chomp
}
ans = "true"
for i in 0..n - 2
  if a[i][a[i].length - 1] != a[i+1][0]
      ans = "false"
  end
end
if a.uniq.length != a.length
    ans = "false"
end
puts ans == "false" ? "No" : "Yes"