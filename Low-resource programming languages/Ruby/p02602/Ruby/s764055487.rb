n,k = gets.split(" ").map(&:to_i)
a =  gets.split(" ").map(&:to_i).slice(0,n)


base = 0
for i in 0..(n-k) do
    score = a.slice(i, k).inject(:*)
    if i > 0 then
        puts score > base ? "Yes" : "No"
    end
    base = score
end
