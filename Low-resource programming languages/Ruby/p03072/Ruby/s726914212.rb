gets
innes = gets.split(' ')
puts innes.map.with_index.select { |inn, i| 
  innes[0..i].all? { |other| other <= inn } 
}.size
