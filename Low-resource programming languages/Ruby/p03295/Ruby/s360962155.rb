require "scanf"

n, m = gets.scanf("%d %d")

a_s = []
b_s = []

req = []
m.times do
    a,b = gets.scanf("%d %d")
    a_s << a
    b_s << b
    req << (a..b)
end

def inter r
    (r.min..r.max-1)
end

def overlaps? a, b
    inter(b).each do |i|
        if inter(a).include?(i)
            return true
        end
    end
    false
end

# 
count = 0
n.times do
    arr = Array.new(n){0}
    req.each do |r|
        inter(r).each do |i|
            arr[i]+=1
        end
    end
    cut = arr.index(arr.max)
    f=false
    (0...req.size).to_a.reverse.each do |i|
        if( inter(req[i]).include?(cut) )
            req.delete_at(i)
            f = true
        end
    end
    count += 1 if f
end

p count