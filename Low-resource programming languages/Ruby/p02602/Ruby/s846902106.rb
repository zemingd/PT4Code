n,k = gets.split(" ").map(&:to_i)
a =  gets.split(" ").map(&:to_i).slice(0,n)


head = a[0]
base = a.slice(0,k).inject(:*)
for i in 1..(n-k) do
    score = base / head * a[i+k-1]
    puts score > base ? "Yes" : "No"
    base = score
    head = a[i]
end
