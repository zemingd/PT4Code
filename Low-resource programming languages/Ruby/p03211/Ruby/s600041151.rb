str = gets.chomp
minimum = 1000

(2..str.length-1).each do |i|
  if (str[i-2..i].to_i - 753).abs < minimum
    minimum = (str[i-2..i].to_i - 753).abs
  end
end

puts minimum
