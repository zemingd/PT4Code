require 'pp'

n, m = gets.chomp!.split(" ").map!(&:to_i)
a = Array.new(0, n + 2)

before = -1
z = false

memo_a = {}

a[0]= -1
1.upto(m) do |i|
    a[i] = gets.chomp!.to_i
    memo_a[a[i]] = a[i]
    if before + 1 == a[i]
        z = true
        break
    end
    before = a[i]
end
a[m+1]=n+1

tree = {
    1 => 1,
    2 => 2
}

if z 
    puts 0
else
    dan_max = 0
    #pp a
    dan = a.each_cons(2).map do |s, e|
        d = (e-s)-2
        if d > dan_max
            dan_max = d
        end 
        d
    end

    #pp dan

    if dan_max >= 3
        3.upto(dan_max) do |x|
            tree[x] = tree[x-1] + tree[x-2]
        end
    end

    total = (dan.inject(1) {|sum, x|
        if x <= 0
            sum
        else
            sum *= tree[x]
            sum %= 1_000_000_007
        end
    }) 

    puts total
end
