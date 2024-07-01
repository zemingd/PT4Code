n, k = gets.chomp.split(" ").map(&:to_i)
h = {}
list = []
n.times do
    a, b = gets.chomp.split(" ").map(&:to_i)
    if h.has_key?(a)
        h[a] += b
    else
        list << a
        h[a] = b
    end
end

list.sort.each do |v|
    k -= h[v]
    if k <= 0
        puts v
        exit
    end
end