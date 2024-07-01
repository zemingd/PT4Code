a, b, c, d, e, f = gets.split.map(&:to_i)

water_a = a*100
water_b = b*100
suger_a = c
suger_b = d
max_suger_per = e.to_f / 100
capacity      = f

total               = 0
total_of_suger_only = 0

loop do
  if total > capacity
    break
  elsif total + suger_a < capacity and ((total_of_suger_only+suger_a).to_f / (total+suger_a).to_f) < max_suger_per
    total               += suger_a
    total_of_suger_only += suger_a
  elsif total + suger_b < capacity and ((total_of_suger_only+suger_b).to_f / (total+suger_b).to_f) < max_suger_per
    total               += suger_b
    total_of_suger_only += suger_b
  elsif total + water_a < capacity
    total += water_a
  elsif total + water_b < capacity
    total += water_b
  else
    break
  end
end
puts "#{total} #{total_of_suger_only}"
