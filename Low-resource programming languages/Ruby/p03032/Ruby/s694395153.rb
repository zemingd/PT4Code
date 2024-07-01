N, K = gets.chop.split.map(&:to_i)
Values = gets.chop.split.map(&:to_i)

ans = 0
0.upto([N, K].min) do |left_pop|
  0.upto([N, K].min - left_pop) do |right_pop|
    vals= Values[0...left_pop] + Values.reverse[0...right_pop]
    vals = vals.sort.reverse
    (K - left_pop - right_pop).times do
      break if vals.empty? || vals[-1] >= 0
      vals.pop
    end
    ans = [ans, vals.inject(0, &:+)].max
  end
end
puts ans
