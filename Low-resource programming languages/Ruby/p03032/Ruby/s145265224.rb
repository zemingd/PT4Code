n, k = gets.strip.split.map(&:to_i)
v = gets.strip.split.map(&:to_i)

actions = []
(0..k).each do |l|
  (0..(k-l)).each do |r|
    t = k-r-l
    actions << [l, r, t]
  end
end

def calc_v(stones, left, right, trash)
  c_s = stones.dup
  get_stones = []

  if c_s.length < left+right
    get_stones = c_s
  else
    left.times { get_stones << c_s.shift}
    right.times { get_stones << c_s.pop}
  end

  get_stones = get_stones.sort
  trash.times {
    get_stones.shift if !get_stones.empty? && get_stones.first<0
  }

  get_stones.inject(0, :+)
end

#p actions.map {|l,r,t| calc_v(v, l, r, t) }
p actions.map {|l,r,t| calc_v(v, l, r, t) }.max
