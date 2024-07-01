n = gets.to_i
a_nums = gets.split.map(&:to_i)
b_nums = []
c_num = []
c_num.push(a_nums.pop) if a_nums.size.even?

a_nums.each_with_index do |num, index|
  if index.odd?
    b_nums.push(num)
  else
    b_nums.unshift(num)
  end
end

unless c_num.empty?
  b_nums.push(c_num.shift)
  b_nums.reverse!
end

puts b_nums.join(" ")
