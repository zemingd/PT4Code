stack = []

while true
    num = gets.split.map(&:to_i)
    break if num[0] == 0 && num[1] == 0
    stack << num
end

puts stack.map{ |a, b|
    a, b = b, a if a > b
    "#{a} #{b}"
}


