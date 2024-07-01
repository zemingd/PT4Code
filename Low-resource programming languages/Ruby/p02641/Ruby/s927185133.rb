target, ar_size = gets.split(" ").map(&:to_i)
ar = gets.split(" ").map(&:to_i)

if ar.length.zero?
  puts target
else
  candidates = [*ar.min..ar.max] - ar
  ans = 999 
  candidates.each do |num|
    ans = num if (target - num).abs < (target - ans).abs
  end
  puts ans
end
