n = gets.to_i
s = []
n.times do |i|
    line = gets.chomp
    s << line
end
ac,wa,tle,re = [],[],[],[]

s.each do |i|
    if i == "AC"
        ac << i
    elsif i == "WA"
        wa << i
    elsif i == "TLE"
        tle << i
    else
        re << i
    end
end

puts "AC x #{ac.size}"
puts "WA x #{wa.size}"
puts "TLE x #{tle.size}"
puts "RE x #{re.size}"