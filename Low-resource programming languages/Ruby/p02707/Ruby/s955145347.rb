N=gets.to_i
manager=gets.chomp.split.map(&:to_i)

staff_count=Array.new(N,0)
check_manager=manager.sort

while !check_manager.empty? do
    staff_count[check_manager.shift-1]+=1
end

puts staff_count