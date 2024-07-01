N, C, *rest = $stdin.read.split.map(&:to_f)
EVENTS = rest.each_slice(3).sort_by{|start, till, ch| [ch, start]}
  
EVENTS_ = []
prev = nil
EVENTS.each do |start, till, ch|
  if prev.nil?
    prev = [start, till, ch]
  else
    start_, till_, ch_ = *prev
    if ch == ch_ && till_ == start
      prev = [start_, till, ch]
    else
      EVENTS_.push(prev)
      prev = [start, till, ch]
    end
  end
end
EVENTS_.push(prev)
  
ans = 0
n = 0
EVENTS_.flat_map{|start, till, ch|
  [
    [start-0.5, +1],
    [till, -1],
  ]
}.sort_by(&:first).chunk(&:first).each do |(_, events)|
  n += events.map(&:last).inject(:+)
  ans = n if n > ans
end

p ans
