s,t = gets.chomp.split
a,b = gets.chomp.split.map(&:to_i)
u = gets.chomp

def remaining_balls(s,t,a,b,u)
    if s == u
        a - 1
    else b - 1
    end
end

print remaining_balls(s,t,a,b,u)