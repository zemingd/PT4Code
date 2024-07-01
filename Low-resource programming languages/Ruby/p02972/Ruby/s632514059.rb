n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)

result = []
n.downto(1) do |i|
    if i > n / 2
        result.push(i) if arr[i - 1] == 1
    else
        sum = 0
        (i + i).step(n, i) do |num|
            sum += arr[num - 1]
        end
        result.push(i) if sum % 2 != arr[i - 1] % 2
    end
end


puts result.size
puts result.join(' ') if result.size != 0