l, m, n = gets.split.map(&:to_i)
if (l == m && l != n) || (l == n && l != m ) || (m==n && m!=l)
  puts "Yes"
else
  puts "No"
end