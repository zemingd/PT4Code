s = gets.chomp.split("").sort
t = gets.chomp.split("")
st = []
ds = []

s.each do |e|
    ti = t.index(e)
    if ti then
        st << e
        t.delete_at(ti)
    else
        ds << e
    end
end

if !ds.empty? && !t.empty? then
    flag = false
    ds.each do |e|
        flag = true if t.any?{|v| e < v}
    end
    puts flag ? "Yes" : "No"
elsif ds.empty? && !t.empty? then
    puts "Yes"
else
    puts "No"
end