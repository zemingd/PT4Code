n = gets.chomp.to_i
res = [""]
(1..n).each do |x|
  if x % 3 == 0
    res << x
  elsif x / 10 != 0
    if x.modulo(10) == 3
      res << x
    elsif x.div(10).modulo(10) == 3
      res << x
    end
  end
end
print res.join(" "), "\n"