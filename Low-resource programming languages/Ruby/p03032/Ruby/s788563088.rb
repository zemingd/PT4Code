N, K = gets.chomp.split(' ').map(&:to_i)

queues = gets.chomp.split(' ').map(&:to_i)
items = []


def dequeue(queues, max_try, try_left, try_right)
  items = []
  try_queues = queues.dup
  items.concat(try_queues.shift(try_left))
  items.concat(try_queues.pop(try_right))
  try_return = max_try - try_left - try_right
  if try_return > 0
    items.sort! { |a, b| a<=>b }
    try_return.times { items.shift if items.size > 0 && items[0] < 0 }
  end
  items.inject(0, &:+)
end

max_challenges = [ N, K ].min
puts (max_challenges.downto(0).map do |try_to_get|
  try_to_get.downto(0).map do |try_get_left|
    try_get_right = try_to_get - try_get_left
    dequeue(queues, K, try_get_left, try_get_right)
  end.max
end).max
