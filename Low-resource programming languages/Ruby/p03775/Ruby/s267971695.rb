require 'prime'
N = gets.to_i
min_n = N
1.upto(N**0.5) do |n|
    min_n = [min_n, [Math.log10(n).to_i + 1, Math.log10(N.div(n)).to_i + 1].max].min if N % n == 0
end
puts min_n