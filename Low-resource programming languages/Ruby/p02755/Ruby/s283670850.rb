a, b = gets.split(" ").map { |s| s.to_i }

x = a / 0.08
y = b / 0.10

ans = -1
#for i in ([x,y].max.to_i..1) do
(1..[x,y].max.to_i).reverse_each do |i|
    if (i*0.08).floor == a and (i*0.10).floor == b and (i*0.08).floor > 0 and (i*0.10).floor then
        ans = i
    end
end

puts ans