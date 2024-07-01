n = gets.to_i
l = gets.chop.split.map(&:to_i)

l.sort!
ans = 0

0.upto(n-3) do |i|
  (i+1).upto(n-2) do |j|
    a_b = l[i] + l[j]

    idx = l.bsearch_index{ |x| x >= a_b }

    # p "i:#{i} j: #{j} a+b:#{a_b} idx: #{idx}"

    if idx.nil?
      ans += n - j - 1
    else
      ans += idx - j - 1
    end
  end
end

puts ans
