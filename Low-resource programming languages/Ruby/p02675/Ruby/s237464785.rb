n = gets.chomp
if n.to_i >= 100
  s = n.split("")
  num = s[2].to_i
elsif n.to_i >= 10
  s = n.split("")
  num = s[1].to_i
else
  num = n.to_i
end

h = "hon"
p = "pon"
b = "bon"
re = [p, p, h, b, h, h, p, h, p, h]
for i in 0..9
  if i == num
    puts re[i]
  end
end