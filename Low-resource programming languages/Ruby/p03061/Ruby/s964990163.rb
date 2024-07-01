# Your code here!
n=STDIN.gets.to_i
as= STDIN.gets.split(' ').map(&:to_i)

# find min index gcd and max value gcd
min = 1000000000
max = 0
index_min = 0
def gcd(a,b)
    while b > 0
        a,b = b,a%b
    end
    return a
end
=begin
for i in 0..n-2 do
    for j in i+1..n-1
        t = gcd(as[i], as[j])
        if (t < min) 
            index_min = i
            min = t
        end
        if (t > max)
            max = t;
        end
    end
end

as[index_min] = max;
puts as
=end

def gcds(args)
    if args.length == 1
        return args
    end
    a = args.shift;
    b = args.shift
    args.push(gcd(a,b))
    gcds(args)
end    

puts gcds(as)