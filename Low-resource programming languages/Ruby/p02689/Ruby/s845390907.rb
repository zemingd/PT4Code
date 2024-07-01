N, M = gets.chomp.split.map(&:to_i)
H  = gets.chomp.split

dropOutList = Hash.new

M.times do
  A, B = gets.chomp.split.map(&:to_i)
  if (H[A-1].to_i >= H[B-1].to_i)
  	dropOutList[B] = true
  end	
  if (H[A-1].to_i <= H[B-1].to_i)
  	dropOutList[A] = true
  end
end

print N - dropOutList.length