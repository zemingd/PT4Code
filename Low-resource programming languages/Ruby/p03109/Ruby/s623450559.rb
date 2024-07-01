s = gets
a = s.slice(0..3).to_i
b = s.slice(5..6).to_i
c = s.slice(8..9).to_i
if b.size == 2 then
    b = b.slice(1)
end
if a <= 2019 and b <= 4 then
    puts "Heisei"
else
    puts "TBD"
end