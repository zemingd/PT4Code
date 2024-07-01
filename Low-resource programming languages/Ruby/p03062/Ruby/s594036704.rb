gomi = gets
input = gets.split(" ").map{|k|k.to_i}
count =0
input.each{|item|
if item<0 then
count +=1
end
}
ans = 0
input.map!{|item|item.abs}
if count%2==0 then
    input.each{|item|
        ans = ans + item
    }
else
    t = input.min
    input.each{|item|
        ans = ans + item
    }
    ans -= t*2
end
print ans