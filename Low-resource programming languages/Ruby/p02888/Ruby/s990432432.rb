# ABC 143 D - Triangles
# https://atcoder.jp/contests/abc143/tasks/abc143_d

n = gets.chomp.to_i
l = gets.chomp.split(/ /).map(&:to_i).sort

class Stick
  def initialize(length, index)
    @length = length
    @index = index
  end

  attr_reader :length, :index
end

sticks = l.map.with_index(0) { |length, i| Stick.new(length, i) }

# puts sticks.inspect
# puts ""

count = 0
0.upto(n - 3) do |i|
  a = sticks[i]
  (i + 1).upto(n - 2) do |j|
    b = sticks[j]
    c_candidates = sticks[(j + 1)..(n - 1)]
    t = a.length + b.length
    c_over = c_candidates.bsearch { |stick| stick.length >= t }
    if c_over.nil?
      c_last_index = n - 1
    else
      c_last_index = c_over.index - 1
    end
    # puts "--------"
    # puts c_candidates.inspect
    # puts "a: #{a}, b: #{b}, a + b: #{t} -> #{c_last_index - j}"
    # puts ""
    count += c_last_index - j
  end
end

puts count
