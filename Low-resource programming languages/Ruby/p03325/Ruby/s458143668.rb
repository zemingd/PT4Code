require "prime"
gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
result = 0
a.each do |num|
  array = Prime.prime_division(num)
  array.each do |item|
    if item[0] == 2 then
      result += item[1]
    end
  end
end
puts result