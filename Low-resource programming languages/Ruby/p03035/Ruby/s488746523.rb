l = gets.chomp.split().map {|v| v.to_i}
n = l[1]
if 13 <= l[0]
  # pass
elsif 6 <= l[0]
  n = n / 2
else
  n = 0
end
puts(n)

