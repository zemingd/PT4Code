(N, K), As = readlines.map{|l| l.split.map(&:to_i)}

M = Math.log2(1e12).ceil
cs = (0 .. M).map{|i| [i, As.count{|a| a[i] == 1}]}
ans = ([-1] + (0 .. M).select{|k| K[k] == 1}).map do |i|
  cs.inject(0) do |n, (j, c)|
    m = case i <=> j
        when -1; K[j] == 1 ? N - c : c
        when  0; c
        when  1; [c, N - c].max
        end
    n + (m << j)
  end
end.max
puts ans