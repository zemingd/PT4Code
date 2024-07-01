a,b = gets.chomp.split(" ").map(&:to_i)
cnt = 0

(a..b).each do |number|
  if number.to_s.split("").join.to_i == number.to_s.split("").reverse.join.to_i
    cnt += 1 
  end
end

puts cnt