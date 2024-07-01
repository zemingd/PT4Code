n = gets.to_i
tests = []
n.times do
  tests << gets.to_i
end
# binding.pry
tests.sort!
sum = tests.inject(:+)
if sum % 10 != 0
  puts sum
  exit
else
  tests.each do |test|
    if test % 10 != 0
      puts sum - test
      exit
    end
  end
end
puts "0"