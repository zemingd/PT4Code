N,M = gets.split.map(&:to_i) # switches, lights
L = Array.new(M + 1)
(1 .. M).map{|i| k,*c = gets.split.map(&:to_i); L[i] = [k, c] }

P = Array.new(N + 1)
gets.split.map(&:to_i).each.with_index(1){|parity,j| P[j] = parity }

ans = (1 << N).times.count do |sw|
  (1 .. M).all? do |m|
    k, c = L[m]
    c.count{|i| sw[i - 1] == 1 } % 2 == P[m]
  end
end
puts ans
