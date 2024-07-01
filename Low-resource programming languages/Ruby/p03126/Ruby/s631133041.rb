ar = gets.chomp!.split(" ")
n = ar[0].to_i
m = ar[1].to_i
a = Array.new(m){|item|item = 0}
count = 0
n.times do
    arr = gets.chomp!.split(" ").map{|item|item = item.to_i}
    arr.delete_at(0)
    arr.each do|b|
        a[b-1] += 1
        if a[b-1] == n then
            count+=1
        end
    end
end
puts count