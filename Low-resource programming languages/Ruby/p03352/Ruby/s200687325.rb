max = gets.chomp.to_i
tmp = 0

if max == 1
  puts "1"
else
  (1..1000001).each do |i|
    # puts i * i
    if i * i > max
      tmp = (i-1) * (i-1)
      break
    end
  end

  puts "#{tmp}"
end
