N = gets.to_i
ac, wa,  tle, re = [0,0,0,0]
N.times do |n|
    s = gets.strip
    if s == "AC"
        ac+=1
    elsif s == "WA"
        wa+=1
    elsif s == "TLE"
        tle+=1
    elsif s=="RE"
        re+=1
    end
end
puts "AC x #{ac}\nWA x #{wa}\nTLE x #{tle}\nRE x #{re}"