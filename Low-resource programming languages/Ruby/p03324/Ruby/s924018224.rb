nums = gets.chomp.split(" ").map(&:to_i)
one = nums[0]
two = nums[1]
if != 100
  if one == 0
    p two
  elsif one == 1
    p two * 100
  elsif one == 2
    p two * 10000
  end
else
    if one == 0
    p two + 1
  elsif one == 1
    p two * 101
  elsif one == 2
    p two * 10100
  end
end