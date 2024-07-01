# Your code here!
n=STDIN.gets.to_i
as= STDIN.gets.split(' ').map(&:to_i)

# find min index gcd and max value gcd
min = 1000000000
max = 0

min_a = 0
min_b = 0
max_a = 0
max_b = 0
def gcd(a,b)
    while b > 0
        a,b = b,a%b
    end
    return a
end


for i in 0..n-2 do
    for j in i+1..n-1
        t = gcd(as[i], as[j])
        if (t < min)
            min = t;
            index_min = i
            index_min_next = j
            min_a = as[i];min_b = as[j]
        end
        if (t > max)
            max = t
            max_a = as[i]
            max_b = as[j]
        end
    end
end
if index_min.nil? == false
  as[index_min] = max_a
  as[index_min_next] = max_b
end

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