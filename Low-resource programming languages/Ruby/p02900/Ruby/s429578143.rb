a, b = gets.split("\s").map(&:to_i)
c = a < b ? a : b
result= 1
table = Array.new(c + 1, true)

(2..c).each do |num|
  if table[num]
    if (a % num == 0 && b % num == 0)
      result += 1
    end
    k = num*num
    while k <= c
      table[k] = false
      k += num
    end
  end
end

puts result