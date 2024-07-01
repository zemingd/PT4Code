# abc166 D
x = gets.to_i

((-100)..100).each do |a|
  ((-100)..100).each do |b|
    if a**5 - b**5 == x
      puts [a,b].join(' ')
      exit
    end
  end
end
