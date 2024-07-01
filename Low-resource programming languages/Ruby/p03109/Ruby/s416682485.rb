s = gets.chomp
y = s[0..3].to_i
m = s[5..6].to_i
d = s[8..9].to_i

res = "Heisei"
if y > 2019
  res = "TBD"
end
if m > 4
  res = "TBD"
end
if d > 30
  res = "TBD"
end

p res