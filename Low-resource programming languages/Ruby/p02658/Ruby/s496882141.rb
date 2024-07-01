n = gets.to_i
array = gets.chomp.split.map(&:to_i)

ans = 1

if array.include(0)
  puts 0
else
  array.each do |i|
    ans *= i
    if ans > 10 ** 18
      puts -1
      return
    else
      next
    end
  end
  puts ans
end
