yen = 100_000
gets.to_i.times do
  yen += (yen*0.05).to_i
  if yen % 1000 != 0 then
    yen = ( yen / 1000 ) * 1000 + 1000
  end
end
puts yen