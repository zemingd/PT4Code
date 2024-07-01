require 'prime'
# n = gets.chomp.to_i
a, b = gets.chomp.split().map(&:to_i)

nums = [1]
1.upto(10**6).each do |i|
  if a%i==0 && b%i ==0 && Prime.prime?(i)
    nums.push i
  end
end

ans = 0
d = nums.size
(2**d).times do |i|
  bits = i.to_s(2).split(//)
  (d - bits.length).times{bits.unshift('0')}

  selected = []
  bits.each_with_index do |bit, i|
    if bit == '1'
      selected.push nums[i]
    end
  end

  if selected.combination(2).all?{|x,y| x.gcd(y) == 1}
    # p ['selected', selected]
    ans = [ans, selected.count].max
  end

end

puts ans