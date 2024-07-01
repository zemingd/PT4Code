x = gets.chomp.to_i
list = (2..100000).to_a
prime_list = []
sqrt = Math.sqrt(x).floor
while true
    value = list[0]
    prime_list.push(value)
    list.delete_if{|num| num % value == 0}
    if list.size == 0
        break
    end
end
prime_list.push(100003)
first = prime_list.index {|v| v > x }
print prime_list[first]