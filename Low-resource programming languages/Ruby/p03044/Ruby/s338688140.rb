require 'set'

def extend(num, color)
  return unless @ans[num] == -1
  @ans[num] = color
  @hash[num].each do |next_num, add_color|
    @expand_set.add([next_num, (@ans[num] + add_color) % 2])
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

@expand_set = Set.new
@expand_set.add([N / 2, 1])


until @expand_set.empty?
  a = @expand_set.take(1)[0]
  @expand_set.delete(a)
  extend(a[0], a[1])
end

1.upto(N) { |i| puts @ans[i] }
