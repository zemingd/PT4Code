a,b = gets.split.map(&:to_f)

puts "#{(a.to_i / b.to_i)} #{(a.to_i % b.to_i)} #{(a / b)}"