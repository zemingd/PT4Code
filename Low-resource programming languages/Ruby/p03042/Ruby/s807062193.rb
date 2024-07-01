a = gets.chomp.split("").map(&:to_s)
ans = []
ewr = []
ans[0] = a[0]
ans[1] = a[1]
ewr[0] = a[2]
ewr[1] = a[3]
yy = ans.join.to_i
mm = ewr.join.to_i


if mm >= 1 && mm <= 12 && yy >= 1 && yy <= 12
puts "AMBIGUOUS"
elsif mm >= 1 && mm <= 12
puts "YYMM"
elsif yy >= 1 && yy <= 12
puts "MMYY"
else
puts "NA"
end