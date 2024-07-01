a,b,c,d,e,f,g = gets.split.map(&:to_i)
o = ((a%2==1)?1:0) + ((d%2==1)?1:0) + ((e%2==1)?1:0)
sol = a + b + d + e
sol -= 1 if o == 1 then
if o == 2 then
    sol -= 1
    sol -= 1 if [a,d,e].min == 0
end
puts sol