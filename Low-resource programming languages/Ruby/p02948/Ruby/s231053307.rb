class PriorityQueue
  attr_accessor :data, :size
 
  def initialize(array = [])
    @data = []
    array.each { |a| push(a) }
  end
 
  def push(element)
    current = @data.size
    while current > 0
      p = parent(current)
      break if @data[p] <= element
      @data[current] = @data[p]
      current = p
    end
    @data[current] = element
  end
 
  def pop
    ret = @data[0]
    x = @data[-1]
    current = 0
    while have_child?(current)
      a = left_child(current)
      b = right_child(current)
      a = b if b < @data.size - 1 && @data[b] < @data[a]
      break if @data[a] >= x
      @data[current] = @data[a]
      current = a
    end
    @data[current] = x
    @data.pop
 
    ret
  end
 
  def size
    @data.size
  end
 
  def front
    @data[0]
  end
 
  def empty?
    @data.empty?
  end
 
  private
  def parent(num)
    (num - 1) / 2
  end
 
  def left_child(num)
    num * 2 + 1
  end
 
  def right_child(num)
    num * 2 + 2
  end
 
  def have_child?(num)
    left_child(num) < @data.size - 1
  end
end




# class PriorityQueue
#   def initialize(array = [])
#     @data = []
#     array.each{|a| push(a)}
#   end

#   def push(element)
#     @data.push(element)
#     bottom_up
#   end

#   def pop
#     if size == 0
#       return 0
#     elsif size == 1
#       return @data.pop
#     else
#       min = @data[0]
#       @data[0] = @data.pop
#       top_down
#       return min
#     end
#   end

#   private

#   def swap(i, j)
#     @data[i], @data[j] = @data[j], @data[i]
#   end

#   def size
#     @data.size
#   end

#   def parent_idx(target_idx)
#     (target_idx - (target_idx.even? ? 2 : 1)) / 2
#   end

#   def bottom_up
#     target_idx = size - 1
#     return if target_idx == 0
#     parent_idx = parent_idx(target_idx)
#     while (@data[parent_idx] > @data[target_idx])
#       swap(parent_idx, target_idx)
#       target_idx = parent_idx
#       break if target_idx == 0
#       parent_idx = parent_idx(target_idx)
#     end
#   end

#   def top_down
#     target_idx = 0

#     # child がある場合
#     while (has_child?(target_idx))
#       child_left_idx = target_idx*2+1
#       child_right_idx = target_idx*2+2

#       # 右側の child が無い場合
#       if @data[child_right_idx].nil?
#         if @data[target_idx] > @data[child_left_idx]
#           swap(target_idx, child_left_idx)
#         end
#         return
#       end

#       if @data[child_left_idx] < @data[child_right_idx]
#         swap(target_idx, child_left_idx)
#         target_idx = child_left_idx
#       else
#         swap(target_idx, child_right_idx)
#         target_idx = child_right_idx
#       end
#     end
#   end

#   # @param Integer
#   # @return Boolent
#   def has_child?(idx)
#     !@data[idx*2+1].nil?
#   end
# end


N, M = gets.chomp.split(' ').map(&:to_i)

AB = []
N.times do |i|
  AB[i] = gets.chomp.split(' ').map(&:to_i)
end

group_by_day = Hash[AB.group_by{|v|v[0]}.sort]

day_fee = Array.new(M){[]}
group_by_day.each do |k,v|
  day_fee[k-1] = v.map{|j| j[1]}
end

# require 'pry'
# binding.pry

ans = 0
pq = PriorityQueue.new
day_fee.each_with_index do |fees, idx|
  break if idx > M - 1
  fees.each do |fee|
    pq.push(fee*(-1))
  end
  ans += pq.pop.to_i
  # p pq
  # p pq.pop*(-1)
end

puts ans*(-1)
