src = 100000
n = gets.to_i

n.times do
  src *= 1.05
  if( src % 1000 != 0 ) then
    src = src - (src % 1000) + 1000
  end
end

puts src.to_i