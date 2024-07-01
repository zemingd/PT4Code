N = gets.to_i
wei = gets.split.map(&:to_i)
min = wei.max

0.upto(N-2) do |n|
  min = [min, (wei[0..n].inject(:+) - wei[(n+1)..(N-1)].inject(:+)).abs].min
end

p min