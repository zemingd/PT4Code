class PriorityQueue < Array
  def <<(x)
    super(x)
    i = size - 1
    while i > 0
      j = parent(i)
      swap_if(i,j)
      i = j
    end
  end
 
  def push(x); self << x; end
 
  def pop
    x = super
    ret = self[0]
    return x if ret.nil?
    self[0] = x
    i = 0
    while parent?(i)
      j, k = children(i)
      j = k if self[k] && self[j] < self[k]
      swap_if(j,i)
      i = j
    end
    ret
  end
 
  private
 
  def swap(i, j); self[i], self[j] = self[j], self[i]; end
  def swap_if(i,j); swap(i,j) if self[i] > self[j]; end
  def parent(i); (i - 1) / 2; end
  def parent?(i); i * 2 + 1 < size; end
  def children(i); [i * 2 + 1, i * 2 + 2]; end
end
 
class DurationReward
  include Comparable
  attr_reader :duration, :reward
  def initialize(duration,reward); @duration = duration; @reward = reward; end
  def <=>(other); reward - other.reward; end
  def inspect; [duration,reward].inspect; end
end
 
n,m = gets.split.map &:to_i
work = Hash.new{|h,k|h[k] = []}

n.times do
  a,b = gets.split.map &:to_i
  work[a] << DurationReward.new(a,b)
end

que = PriorityQueue.new
ans = 0
1.upto(m) do |i|
  work[i].each do |v|
    que << v
  end
  next if que.empty?

  v = que.pop
  ans += v.reward
end

puts ans
