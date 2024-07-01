n = gets.to_i
arr = gets.split(" ").map(&:to_i)

sm = arr.sort[n/2 - 1]
bm = arr.sort[n/2]

for x in 0 .. n-1 do
    puts arr[x] <= sm ? bm : sm
end
