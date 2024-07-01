n = gets.to_i
ts = [].tap { |array| n.times { array << gets.to_i } }

result = ts.max
ts.each do |t|
  unless (result % t).zero?
    result = result.lcm t
  end
end

puts result