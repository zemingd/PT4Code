require 'bigdecimal'

wait_times = readlines.map(&:to_i)
nums = wait_times.map{|num| num % 10}

def calc_min(nums)
  min = nums.min
  while min.zero?
    nums.delete(min)
    min = nums.min
  end
  min
end

min = calc_min(nums)
min_wait_time = wait_times[nums.index(min)]
wait_times.delete_at(nums.index(min))
times_after_round = wait_times.map{|num| BigDecimal(num).ceil(-1).to_i}

puts times_after_round.inject(&:+) + min_wait_time