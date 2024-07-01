a = gets
l = a.to_i
i = 0
c = 0
while i < l do
    if a.include?("7") && a.include?("5") && a.include?("3") && !(a.include?("1")) && !(a.include?("2")) && !(a.include?("4")) && !(a.include?("6")) && !(a.include?("8")) && !(a.include?("9")) && !(a.include?("0")) then
        c += 1
    end
    q = a.to_i
    q -= 1
    a = q.to_s  
    i += 1
end
puts c