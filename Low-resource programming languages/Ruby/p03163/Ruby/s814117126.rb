n, w = gets.split(" ").map(&:to_i)

dp = Hash.new
dp[0] = 0

n.times do |i|
  input = gets.split(" ").map(&:to_i)
  dp_tmp = dp.clone
  dp.each do |k, v|
    total_weight = k + input[0]
    total_value = v + input[1]
    if total_weight <= w
      if dp_tmp[total_weight]
        dp_tmp[total_weight] = [total_value, dp_tmp[total_weight]].max
      else
        dp_tmp[total_weight] = total_value
      end
    end
  end
  dp = dp_tmp
end

puts dp.values.sort[-1]