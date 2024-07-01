n, m  = gets.strip.split.map(&:to_i)
as = gets.strip.split.map(&:to_i)

matched_numbers = [2,5,5,4,5,6,3,7,6].map.with_index {|e, i| [e, i+1] }.select {|_, i| 
as.include?(i) }.sort_by(&:last).to_h

#p matched_numbers

dp = Array.new(n+1)

(n+1).times do |i|
  tmp = matched_numbers[i].to_i.to_s
  matched_numbers.each do |cost, number|
    next if dp[i-cost].to_i.zero?

    exists = dp[i-cost]
    current_number = number.to_s
    current = exists > current_number ? (exists+current_number) : (current_number+exists)

    tmp = current if tmp.length < current.length || (tmp.length == current.length && tmp < current)
  end
  dp[i]=tmp
end

#p dp
p dp[n].to_i

