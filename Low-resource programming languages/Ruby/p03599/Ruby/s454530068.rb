A,B,C,D,E,F = gets.split.map(&:to_f)
@a100 = A * 100.0
@b100 = B * 100.0

cnt_a = F % @a100 == 0 ? F / @a100 : F / @a100 + 1
cnt_b = F % @b100 == 0 ? F / @b100 : F / @b100 + 1
water = []
# binding.pry
0.upto(cnt_a) do |i|
  0.upto(cnt_b) do |j|
    pre = @a100 * i + @b100 * j
    water << pre if pre <= F
  end
end
water.uniq!
# p water
cnt_c = F % C == 0 ? F / C : F / C + 1
cnt_d = F % D == 0 ? F / D : F / D + 1
suger = []
0.upto(cnt_c) do |i|
  0.upto(cnt_d) do |j|
    pre = C * i + D * j
    suger << pre if pre <= F
  end
end
suger.uniq!
# p suger
ans = [@a100, 0.0]
pre2 = 0
water.each do |wat|
  suger.each do |sug|
    sugwat = wat + sug
    sweet = 100 * sug / (sugwat)
    if 0 < sugwat && sugwat <= F && pre2 < sweet && sug / wat <= E / 100.0
      ans = [wat + sug, sug]
      pre2 = sweet
    end
  end
end
puts "#{ans[0]} #{ans[1]}"