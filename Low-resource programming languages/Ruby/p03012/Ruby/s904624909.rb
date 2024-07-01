n = gets.chomp!.to_i
w_n = gets.chomp!.split(" ").map!(&:to_i)

diff_min = 99999999999
1.upto(n-1) do |t|
  s1 = w_n[0, t].inject(&:+)
  s2 = w_n[t, n-t].inject(&:+)

  if diff_min > (s1 - s2).abs
    diff_min = (s1 - s2).abs
  end
end

puts diff_min

