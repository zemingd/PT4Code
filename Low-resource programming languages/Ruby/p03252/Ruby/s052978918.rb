s = gets.chomp.split("")
t = gets.chomp.split("")

ok = true

ma = {}
ima = {}

s.size.times do |i|
    si = s[i]
    ti = t[i]
    if ma.include?(si)
        if ma[si] != ti
            ok = false
        end
    end
    if ima.include?(ti)
        if ima[ti] != si
            ok = false
        end
    end
    ma[si] = ti
    ima[ti] = si
end

if ok
    puts "Yes"
else
    puts "No"
end