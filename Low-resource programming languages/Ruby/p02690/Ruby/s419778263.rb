# abc166 D
x = gets.to_i

((-1000)..1000).each do |a|
  ((-1000)..1000).each do |b|
    if a**5 - b**5 == x
      puts [a,b].join(' ')
      exit
    end
  end
end
