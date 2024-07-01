x = gets.to_i
t ,a = gets.chop.split.map(&:to_i)
i = gets.chop.split.map(&:to_i)

hoge = 0
ans = 0
q = 0
while hoge < x do 
    q = ((t - i[hoge] * 0.006) - a).abs
    if hoge == 0 then
        min = q
        #1
        #5
        ans = hoge + 1
    elsif q < min then
        min = q
        ans = hoge + 1
    end
    hoge += 1
end

puts ans