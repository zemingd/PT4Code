# ABC 134 D - Preparing Boxes
# https://atcoder.jp/contests/abc134/tasks/abc134_d

n = gets.chomp.to_i
a = gets.chomp.split(/ /).map(&:to_i)

class Box
  def initialize(a, index, balls_count)
    @a = a
    @index = index
    @balls_count = balls_count
  end

  attr_reader :a, :index
  attr_accessor :balls_count
  # setter checked : Bool
end

boxes = a.map.with_index { |element, i| Box.new(element, i + 1, 0) }
boxes.reverse.each_cons(2) do |boxes|
  box_large, box_small = boxes
  box_large.balls_count = (box_large.a == box_small.a ? 0 : 1)
end

balls_count_all = boxes.map(&:balls_count)
balls_count_sum = balls_count_all.reduce(0) { |acc,i| acc + i}

if (balls_count_sum.even? && boxes.first.a == 0) || (balls_count_sum.odd? && boxes.first.a == 1)
  puts balls_count_all.select(&:positive?).size
  boxes_not_empty = boxes.select { |box| box.balls_count.positive? }
  if !boxes_not_empty.empty?
    puts boxes_not_empty.map(&:index).join(' ')
  end
else
  puts "-1"
end
