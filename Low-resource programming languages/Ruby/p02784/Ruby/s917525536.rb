array = Array.new

2.times do
    val = gets.split.map!{|i| i.to_i}
    array.push(val)
end

h = array[0][0]
a = array[1]

a.each{|num|
    h = h - num
}

if h <= 0
    puts("Yes")
else
    puts("No")
end
