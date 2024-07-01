N = gets.to_i
As = gets.split.map(&:to_i)

N_neg = As.count{|a| a < 0}
As_abs = As.map(&:abs)

ans = As_abs.inject(:+)

if N_neg.odd? then
    ans -= 2*As_abs.min
end

p ans
