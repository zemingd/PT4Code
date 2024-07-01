require 'pp'

def gets; ARGF.gets; end

def main
  n, x = gets.split.map(&:to_i)
  nums = Array.new(n)
  min_n = 1 << 30
  sum_n = 0
  n.times do |i|
    nums[i] = gets.chomp.to_i
    sum_n += nums[i]
    min_n = nums[i] if nums[i] < min_n
  end

  rest_x = x - sum_n
  ans = nums.length

  ans += rest_x / min_n

  puts ans
end

if __FILE__ == $0
  main
end
