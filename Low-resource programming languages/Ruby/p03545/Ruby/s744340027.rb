s = gets.chomp
a = s[0].to_i
b = s[1].to_i
c = s[2].to_i
d = s[3].to_i
ans = []
["-","+"].repeated_permutation(3).each do |x|
  sum = a
  sum += b if x[0] == "+"
  sum -= b if x[0] == "-"
  sum += c if x[1] == "+"
  sum -= c if x[1] == "-"
  sum += d if x[2] == "+"
  sum -= d if x[2] == "-"
  if sum == 7
    ans << x
  end
end
str = s[0] + ans[0][0] + s[1] + ans[0][1] + s[2] + ans[0][2] + s[3] + "=7"
puts str
