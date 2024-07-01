def divide_by_2(n)
  ret =	0
  loop do
    break if n%2 == 1
    n /= 2
    ret	+= 1
  end
  ret
end

gets
nums = gets.chomp.split(' ').map(&:to_i)
p nums.map{ |i| divide_by_2(i) }.inject(:+)
