n,k = gets.split(" ").map(&:to_i)
a =  gets.split(" ").map(&:to_i).slice(0,n)


head = a[0]
for i in 1..(n-k) do
    last = a[i+k-1]
    puts last > head ? "Yes" : "No"
    head = a[i]
end
