n, x = gets.strip.split.map(&:to_i)

arr = n.times.map { gets.to_i }
num = n
balance = x - arr.sum

while balance > arr.min do 
    balance -= arr.min
    num += 1
end

puts num