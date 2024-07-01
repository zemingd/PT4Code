n, k = gets.chomp.split(" ").map(&:to_i)
nums = []
n.times { nums << gets.chomp.split(" ").map(&:to_i) }
pnus = nums.map.with_index do |n, i|
  sum = nums[0..i].inject(0) {|memo, cur| memo + cur[1] }
  [n[0], sum]
end

ans = pnus[0][0]
pnus.each_cons(2) do |a, b|
  if k > a[1] && k <= b[1]
    ans = b[0]
    break
  end
end

puts ans
