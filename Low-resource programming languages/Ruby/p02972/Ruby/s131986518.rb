n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)

result = []
correct = Array.new(n)
n.downto(1) do |i|
    if i > n / 2
        correct[i - 1] = arr[i - 1]
        result.push(i) if arr[i - 1] == 1
    else
        sum = 0
        (i + i).step(n, i) do |num|

            sum += correct[num - 1]
        end
        correct[i - 1] = sum % 2 != arr[i - 1] % 2 ? 1 : 0
        result.push(i) if sum % 2 != arr[i - 1] % 2
    end
end

puts result.size
puts result.join(' ') if result.size != 0