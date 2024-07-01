n,m=gets.split.map(&:to_i)
h=gets.split.map(&:to_i)
lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

onoffstr="off "*m
onoff=onoffstr.split.map(&:to_s)
lines.each do |line|
line.each_cons(2) do |x,y|
if h[x-1]<=h[y-1]
onoff[y-1]="on"
onoff[x=1]="off"
end
end
end

puts onoff.count("on")