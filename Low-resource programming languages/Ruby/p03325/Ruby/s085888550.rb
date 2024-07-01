n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i)

ary_two = []

ary.each do |x|
  ary_two << x.to_s(2)
end

i = 0

ary_two.each do |x|
  x.size.times do |j|
    if x[-(1+j)] == "0"
      i += 1
    else
      break
    end
  end
end

puts i