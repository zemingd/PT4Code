a,b,c = gets.split(' ').map(&:to_i)
print(a+b+c<22 ? "win" : "bust")