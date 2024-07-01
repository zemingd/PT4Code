def extend(num, color)
  return if @hash[num].size.zero?
  @ans[num] = color
  next_inf = @hash[num]
  @hash.delete(num)
  next_inf.each do |next_num, add_color|
    extend(next_num, (@ans[num] + add_color) % 2)
  end
end

N = gets.chomp.to_i

@hash = Hash.new { [] }
(N - 1).times do
  v1, v2, w = gets.chomp.split.map(&:to_i)
  @hash[v1] = @hash[v1] + [[v2, w % 2]]
  @hash[v2] = @hash[v2] + [[v1, w % 2]]
end

@ans = [-1] * (N + 1)

@ans [1] = 1
extend(1, 1)

1.upto(N) { |i| puts @ans[i] }
