def ascan; gets.split.map(&:to_i);end

tt = []
gets.to_i.times{
    tt << gets.to_i
}

p tt.reduce :lcm