N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
BC_pre = []
M.times do
  line = gets.split.map(&:to_i)
  BC_pre << line
end
A.sort!
BC = BC_pre.sort_by {|k, v| v }

ind = 0
BC.reverse_each do |bc|
  count = bc[0]
  while count > 0 and ind < N
    if A[ind] >= bc[1]
      ind += 1
    else 
      A[ind] = bc[1]
      ind += 1
      count -= 1
    end
  end
end

p A.inject(:+)