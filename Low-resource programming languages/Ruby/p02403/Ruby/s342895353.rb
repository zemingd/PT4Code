loop do
arr = gets.split.map(&:to_i)
h = arr[0]
w = arr[1]
if h != 0 || w != 0 then
for i in 1..h
for j in 1..(w-1)
print "#"
end
puts "#"
end
puts ""
else
exit
end
end
