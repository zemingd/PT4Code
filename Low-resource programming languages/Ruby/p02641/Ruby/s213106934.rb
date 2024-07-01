x,n = gets.chomp.split(" ").map!{|item| item.to_i}
p = gets.chomp.split(" ").map!{|item| item.to_i}
p.sort!
if n == 0
    puts x
    exit
end
y = p.max - 1
for i in 0..p.max+1 do
  	a = y
    if y > (x-i).abs
        if p.include?(i)
        else
        y = (x-i).abs
        a = i
        end
    end
end
puts a