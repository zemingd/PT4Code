def illegal_number? (price, denies)
  price.to_s.split('').map(&:to_i).each {|i|
    if denies.include?(i) then
      return true
    end
  }

  return false
end

price, count = gets.chomp.split.map(&:to_i)
denies = gets.chomp.split.map(&:to_i)

base = 1

while illegal_number?(price, denies) do
  price += base * 1

  digits = price.to_s.split('').reverse
  if !denies.include?((digits[base - 1].to_i)) then
    base *= 10
  end
end

puts price
