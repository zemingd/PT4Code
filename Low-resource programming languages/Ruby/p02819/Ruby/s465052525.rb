x = gets.chomp.to_i
list = (1..4999).to_a
list.map! {|i| i*2+1}
prime_list = [2]
while true
    value = list[0]
    prime_list.push(value)
    list.delete_if{|num| num % value == 0}
    if list.size == 0
        break
    end
end
prime_list.push(100003)
first = prime_list.index {|v| v >= x }
print prime_list[first]