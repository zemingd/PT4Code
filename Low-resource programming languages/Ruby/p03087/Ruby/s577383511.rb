n,q = gets.split(" ").map(&:to_i)
s = gets.chomp.split("")
aci =[0]*(n+1)
p aci
for i in 1..n-1 do
    if s[i-1] == "A" && s[i] == "C"
        aci[i+1] = aci[i] + 1
    elsif
        aci[i+1] = aci[i]
    end
end
p aci
q.times do
    l,r = gets.split(" ").map(&:to_i)
    puts aci[r] - aci[l]
end