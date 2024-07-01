h, n = gets.split(' ').map(&:to_i)
A = gets.split(' ').map(&:to_i).sort

for i in (A.size-n)..(A.size-1) do
    h -= A[i]
end

if h > 0
    puts "No"
else
    puts "Yes"
end


