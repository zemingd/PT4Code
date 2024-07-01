# ABC 159 D
# https://atcoder.jp/contests/abc159/tasks/abc159_d

n = gets.to_i
a = gets.split(/ /).map(&:to_i)

a_uniq_size = a.uniq.size

class Pattern
  def initialize(i)
    @i = i
    @count = 0
  end

  def increment
    @count = @count + 1
  end

  attr_reader :count

  def calc
    @calc ||= count * (count - 1) / 2
  end
end

h = {}

a.each_with_index do |ai, i|
  h[ai] ||= Pattern.new(ai)
  h[ai].increment
end

base = h.values.map(&:calc).sum

h2 = {}

a.each_with_index do |ai, i|
  pattern = h[ai]
  if h2[ai].nil?
    result = base - (pattern.count - 1)
    h2[ai] = result
    puts result
  else
    puts h2[ai]
  end
end
