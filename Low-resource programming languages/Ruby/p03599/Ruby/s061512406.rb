A, B, C, D, E, F = gets.chomp.split.map(&:to_i)

x = []
y = []

31.times do |i|
  31.times do |t|
    amount = 100*A*i + 100*B*t
    x.push(amount) if amount <= F && amount > 0
  end
end
x.uniq!

3001.times do |i|
  3001.times do |t|
    amount = i*C + t*D
    y.push(amount) if amount <= F
  end
end
y.uniq!

ans_amount = 0
ans_suger = 0
ans_rate = 0
limit_rate = (E.to_f * 100) / (100 + E)
x.each do |xx|
  y.each do |yy|
    amount = xx + yy
    next if amount > F
    rate = (100 * yy).to_f / amount
    next if rate > limit_rate
    if rate >= ans_rate
      ans_amount = amount
      ans_suger = yy
      ans_rate = rate
    end
  end
end
puts "#{ans_amount} #{ans_suger}"
