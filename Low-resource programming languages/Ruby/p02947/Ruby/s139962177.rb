def green_bin(s)
  s.map! { |str| str.chars.sort.join }
  ans = 0
  n = s.size
  0.upto(n - 2) do |i|
    (i + 1).upto(n - 1) do |j|
      ans += 1 if s[i] == s[j]
    end
  end
  ans
end

n = gets.to_i
s = []
n.times{ s << gets.chomp }

puts green_bin(s);
