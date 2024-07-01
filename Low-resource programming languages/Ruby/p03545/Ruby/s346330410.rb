n = gets.chomp.split("").map(&:to_i)
print n[0]

total = n[0]
n.delete_at(0)

n_sort = n.sort{|a, b| (-1) * (a <=> b)}
op = []

for i in 0..(n_sort.length-1) do
    if total <= 7
        total = total + n_sort[i]
        op[i] = "+"
    else
        total = total - n_sort[i]
        op[i] = "-"
    end
end

n.each do |i|
    for s in 0..(n_sort.length-1) do
        if i == n_sort[s]
            print op[s]
            print i
            n_sort[s] = -1
            break
        end
    end
end
puts "=7"
