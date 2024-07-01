n = gets.chomp.split("")
m = []
n.each do |e|
    e = e == '9' ? '1' : '9'
    m << e
end
print m.join("")