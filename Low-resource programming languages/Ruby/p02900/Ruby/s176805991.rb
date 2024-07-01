aa, bb = gets.split.map(&:to_i)

a = [aa, bb].min
b = [aa, bb].max

b2 = (b**0.5).to_i

cd = []
for i in 2..b2
    if a%i == 0 && b%i == 0
        ok = true
        cd.each do |x|
            ok = false if i % x == 0
        end
        cd.push(i) if ok
    end
end
cd.push(1)

puts cd.size
