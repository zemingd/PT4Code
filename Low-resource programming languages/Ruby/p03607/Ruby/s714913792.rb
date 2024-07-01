A = Array.new(N=gets.to_i) { gets.to_i }

nums = A.group_by { |x| x }
        .map { |k, v| [ k, v.size ] }
        .to_h

count = 0
nums.each do |k, v|
  count += 1 if v.odd?
end
puts count