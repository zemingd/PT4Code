N, K = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

opt = 0
opt_less = -10**18

40.downto(0) do |d|
    num1 = as.count{|a| a[d] == 1}
    num0 = N - num1

    opt_less += (1<<d) * [num0, num1].max

    if K[d] == 1
        opt += (1<<d) * [num0, num1].max
        opt_less = [opt_less, opt].max
    else
        opt += (1<<d) * num1
    end
end

puts [opt, opt_less].max