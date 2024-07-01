necessity = [2, 5, 5, 4, 5, 6, 3, 7, 6]
n, m = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
nums.delete(4) if nums.include?(1)
nums.delete(2) if nums.include?(3) || nums.include?(5)
nums.delete(3) if nums.include?(5)
nums.delete(6) if nums.include?(7) || nums.include?(9)
nums.delete(9) if nums.include?(7)
nums.delete(5) if nums.include?(1) && nums.include?(7)
nums.delete(8) if nums.include?(1) && nums.include?(5)
num_sticks = nums.map { |n| [n, necessity[n - 1]] }
num_sticks.sort! { |a, b| (a[1] <=> b[1]).nonzero? || b[0] <=> a[0] }
selected_nums = Hash.new(0)
reduced_sticks = [(n - 28), 0].max
first_num, first_stick = num_sticks.first
div, mod = reduced_sticks.divmod(first_stick)
selected_nums[first_num] += div
rest_sticks = n - (reduced_sticks - mod)
queue = [[rest_sticks, selected_nums]]
options = []
until queue.empty?
  rest, selected = queue.shift
  if rest == 0
    options << selected
  else
    num_sticks.each do |num, stick|
      rest_dup = rest
      selected_dup = selected.dup
      if rest_dup >= stick
        rest_dup -= stick
        selected_dup[num] += 1
        queue << [rest_dup, selected_dup]
      end
    end
  end
end
ans = []
options.each do |hash|
  tmp = []
  hash.each do |k, v|
    v.times { tmp << k }
  end
  ans << tmp.sort { |a, b| b <=> a }.join.to_i
end
puts ans.max
