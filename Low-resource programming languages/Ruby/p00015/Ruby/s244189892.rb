while input = gets
  n = input.chomp.to_i
  n.times do
    a = gets.chomp.to_i
    b = gets.chomp.to_i
    sum = a+b
    if sum.to_s.split("").length > 80
      puts "overflow"
    else
      puts sum
    end
  end
end

