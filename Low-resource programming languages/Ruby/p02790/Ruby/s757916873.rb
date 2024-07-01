
def get_nums
  gets.split.map(&:to_i)
end

def init_matrix(row_num, row_length, default = nil)
  Array.new(row_num).map { Array.new(row_length, default) }
end


a, b  = get_nums

as = a.to_s * b
bs = b.to_s * a
if as < bs
  puts as
else
  puts bs
end