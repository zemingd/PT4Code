N, K = gets.split.map(&:to_i)
v = gets.split.map(&:to_i)
ans = 0

1.upto(K) do |i|
  0.upto(i).each do |j|
    h = []
    # shift
    j.times {|k| h << v[k] }

    # pop
    (i-j).times {|k| h << v[-k] }

    # drop
    h.sort!
    (K - j).times do
      unless h.empty?
        x = h.shift
        if x > 0
          h = [x] + h
          break
        end
      end
    end
    tmp = h.inject(&:+) || 0
    ans = tmp if tmp > ans
  end
end

puts ans