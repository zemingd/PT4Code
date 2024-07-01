str = gets
s = str.split[0]
# t = str.split[1]
    
num = gets
a = num.split[0].to_i
b = num.split[1].to_i
    
u = gets
    
if s == u then
    print("#{(a-1).to_s b.to_s}")
else
    print("#{a.to_s (b-1).to_s}")
end