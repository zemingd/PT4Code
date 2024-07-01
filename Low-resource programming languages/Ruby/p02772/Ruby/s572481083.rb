n = gets.to_i
nums = gets.split.map(&:to_i)
nums.each do |num|
  if num.even?
    if num % 3 == 0 || num % 5 == 0
      next
    else
      puts "DENIED"
      exit
    end
  end
end
puts "APPROVED"
