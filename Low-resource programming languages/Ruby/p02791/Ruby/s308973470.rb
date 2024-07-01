
def get_nums
  gets.split.map(&:to_i)
end

def init_matrix(row_num, row_length, default = nil)
  Array.new(row_num).map { Array.new(row_length, default) }
end

n = gets.to_i
nums = get_nums

current_min = 10**6
res = 0
nums.each do |i|
  if current_min >= i
    res += 1 
    current_min = i
  end
end

puts res
