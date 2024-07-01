n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
ans_arr = []
if n % 2 != 0
  arr.each.with_index do |num,i|
    if i % 2 == 0
      ans_arr.unshift(num)
    else
      ans_arr.push(num)
    end
  end
else
  arr.each.with_index do |num,i|
    if i % 2 != 0
      ans_arr.unshift(num)
    else
      ans_arr.push(num)
    end
  end
end
puts ans_arr.join(' ')
