N, K = gets.split.map(&:to_i)
v = gets.split.map(&:to_i)
ans = 0

1.upto(K) do |i|
  0.upto(i).each do |j|
    v_copy = v.clone
    h = []
    # shift
    j.times {|k| h << v_copy.shift unless v_copy.empty? }

    # pop
    (i-j).times {|k| h << v_copy.pop unless v_copy.empty? }

    # drop
    h.sort!
    (K - i).times do
      unless h.empty?
        if h.first < 0
          h.shift
        else
          break
        end
      end
    end
    tmp = h.inject(&:+) || 0
    ans = tmp if tmp > ans
  end
end

puts ans