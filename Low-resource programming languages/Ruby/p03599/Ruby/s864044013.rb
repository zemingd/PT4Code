a, b, c, d, e, f = gets.split.map(&:to_i)
a *= 100
b *= 100
waters = []
0.upto(30) do |a_count|
  0.upto(30) do |b_count|
    amount = a * a_count + b * b_count
    if amount <= f
      waters << amount
    else
      break
    end
  end
end
waters.uniq!

answers = [a, 0, 0.0]

waters.each do |water|
  max_sugar = water / 100 * e
  0.upto(3000) do |c_count|
    c_sugar = c * c_count
    break if water + c_sugar > f
    break if c_sugar > max_sugar
    d_sugar_max_op1 = max_sugar - c_sugar
    d_sugar_max_op2 = f - (water + c_sugar)
    d_sugar_max = [d_sugar_max_op1, d_sugar_max_op2].min
    d_count = d_sugar_max / d
    d_sugar = [d * d_count, 0].max
    sugar_total = c_sugar + d_sugar
    sugar_percentage = (sugar_total * 100.0) / (water + sugar_total)
    if answers[2] < sugar_percentage
      answers[0] = water + sugar_total
      answers[1] = sugar_total
      answers[2] = sugar_percentage
    end
  end
end

puts "#{answers[0]} #{answers[1]}"
