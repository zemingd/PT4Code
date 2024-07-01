array = []

for i in 0..1 do
    val = gets.split.map!{|i| i.to_i}
    array.append(val)
end

a = array[1]
check = 0

a.each{|num|
    if num % 2 == 0
        if not (num % 3 == 0) and not (num % 5 == 0) 
            check += 1
        end
    end
}
  
if check > 0
    puts("DENIED")
else
    puts("APPROVED")
end
