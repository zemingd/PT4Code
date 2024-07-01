num = gets.to_i

nums = gets.split.map(&:to_i)
nums.reverse!

nums.each_with_index do |e, i|
    printf("%d", e)
    printf(" ") unless i == (num - 1)
end
puts

