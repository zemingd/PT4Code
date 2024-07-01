str = gets
n = str.chomp.to_i

str = gets
x = str.split(" ").map(&:to_i)

min_tairyoku = 1000000
for i in 1 .. 100
  tairyoku = 0
  x.each{|e| tairyoku = tairyoku + (e-i)**2}
  if min_tairyoku > tairyoku
    min_tairyoku = tairyoku
  end
end

puts min_tairyoku