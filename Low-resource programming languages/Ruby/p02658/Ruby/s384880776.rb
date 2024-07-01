count = ''
count = gets.to_i


num_array = gets.chomp.split(' ').map(&:to_i)

if num_array.include?(0)
    ans = 0
else
    ans = 1
    num_array.map { |num| ans *= num }
    if ans > 10 ** 18
        ans = -1
    end
end
puts ans