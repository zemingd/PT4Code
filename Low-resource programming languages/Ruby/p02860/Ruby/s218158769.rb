n = gets.to_i
s = gets.to_s

case n.odd?
when true then
    puts "No"
else
    a = s.slice(0,n/2)
    t = s.slice(n/2,n-1)
    puts a
    puts t
    if a == t
        puts "Yes"
    else
        puts "No"
    end
end