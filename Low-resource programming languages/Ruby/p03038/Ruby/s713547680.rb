N, M = gets.chomp.split.map(&:to_i)
cards = gets.chomp.split.map(&:to_i)

class PriorityQueue

  def initialize
    @queue = []
  end

  def top
    @queue.last
  end

  def push(pair)
    @queue.push pair
  end

  def pop
    @queue.pop
  end

  def empty?
    @queue.empty?
  end

  def sort!
    @queue = @queue.sort_by {|change| change.first }
  end
end

changes = PriorityQueue.new

M.times do
  b, c = gets.chomp.split.map(&:to_i)
  changes.push [c, b]
end

cards = cards.sort
changes.sort!

cards.each_with_index do |card, i|
  break if changes.empty?
  break if changes.top.first <= card

  cards[i] = changes.top.first
  change = changes.pop
  if (change[1] > 1)
      change[1] -= 1
      changes.push change
  end
end

puts cards.inject(&:+)
