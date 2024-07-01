n, k = gets.split(" ").map(&:to_i)
v = gets.split(" ").map(&:to_i)

ans = 0

0.upto(k) do |i|
  break if i > n
  0.upto(i) do |r| #右からr
    l = i - r
    tmp = []
    l.times do |x|
      tmp << v[x]
    end
    r.times do |x|
      tmp << v[n-1-x]
    end
    tmp = tmp.sort_by{|e| e}
    (k-i).times do |x|
      if !tmp.empty?
        tmp.shift if tmp[0] < 0
      end
    end
    sum = tmp.inject(:+) if !tmp.empty?
    ans = sum if !sum.nil? && sum > ans
  end
end
puts ans
 