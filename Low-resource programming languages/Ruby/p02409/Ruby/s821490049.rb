n = gets.to_i
f11 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
f12 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
f13 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
f21 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
f22 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
f23 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
f31 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
f32 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
f33 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
f41 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
f42 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
f43 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
b1 = [f11,f12,f13]
b2 = [f21,f22,f23]
b3 = [f31,f32,f33]
b4 = [f41,f42,f43]
bf = [b1,b2,b3,b4]

n.times do
    x = gets()
    x = x.split
    if x[0].to_i <= 4 && x[1].to_i <= 3 && x[2].to_i <= 10 && 0 <= bf[x[0].to_i][x[1].to_i][x[2].to_i] + x[3].to_i && bf[x[0].to_i][x[1].to_i][x[2].to_i] + x[3].to_i <=9
    b = x[0].to_i - 1
    f = x[1].to_i - 1
    r = x[2].to_i - 1
    v = x[3].to_i 
    end
    bf[b][f][r] = bf[b][f][r] + v
    
end

puts f11.join(" ")
puts f12.join(" ")
puts f13.join(" ")
puts "#" * 20
puts f21.join(" ")
puts f22.join(" ")
puts f23.join(" ")
puts "#" * 20
puts f31.join(" ")
puts f32.join(" ")
puts f33.join(" ")
puts "#" * 20
puts f41.join(" ")
puts f42.join(" ")
puts f43.join(" ")

