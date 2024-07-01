x = gets.chomp.to_f
max = 1

for i in 2..31
  v = Math.log(x) / Math.log(i.to_f)
  value = v.round(10)
  if value >= 2.0
    new_num = i ** value.floor
    if new_num > max
      max = new_num
    end
  end
end

puts max
