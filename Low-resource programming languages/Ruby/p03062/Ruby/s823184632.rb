n = gets.to_i
arr = gets.split(" ").map(&:to_i)
arrab = Array.new
pm = 1
for i in 0..n-1 do
    arrab[i] = arr[i].abs
end

sumabs = arrab.inject(:+)

if arr.include?(0)
    puts sumabs
    exit
end

for i in 0..n-1 do
    if arrab[i] != arr[i]
        pm = pm * -1
    end
end
if pm == 1
    puts sumabs
else
    puts sumabs - arrab.min
end