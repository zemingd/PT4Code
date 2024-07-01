N, M = gets.chomp.split.map(&:to_i)
H  = gets.chomp.split

dropout = Hash.new

M.times do
  A, B = gets.chomp.split.map(&:to_i)
  if (H[A-1] >= H[B-1])
  	dropout[B] = true
  elsif(H[A-1] <= H[B-1])
  	dropout[A] = true
  end
end

print N - dropout.length