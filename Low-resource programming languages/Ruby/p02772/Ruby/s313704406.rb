def papers(numbers)
  checks = []
  numbers.each do |num|
    if num % 2 == 0
      checks.push(num)
    end
  end

  checks.each do |num|
    unless num % 3 == 0 || num % 5 == 0
      puts "DENIED"
      exit
    end 
  end
  puts "APPROVED"
end

n = gets.chomp
numbers = gets.chomp.split(" ").map(&:to_i)
papers(numbers)