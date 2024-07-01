AE = 5.times.map{|_| gets.to_i}
jikan = AE.map{|i| i % 10 == 0 ? i : i / 10 * 10 + 10}.sum
amari = AE.map{|i| i % 10}.select{|i| i > 0}.min
if amari.to_i > 0
  p jikan - 10 + amari
else
  p jikan
end