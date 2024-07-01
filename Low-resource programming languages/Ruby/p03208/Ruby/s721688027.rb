N, K = gets.split.map(&:to_i)
hs = Array.new(N) { gets.to_i }

min = nil

hs.sort!

(hs.length - K + 1).times do |i|

  diff = hs[i + K - 1] - hs[i]
  if min.nil?
    min = diff
  else
    min = diff if diff < min
  end
end


puts min
