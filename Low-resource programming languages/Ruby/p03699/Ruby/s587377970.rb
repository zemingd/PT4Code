s=gets.to_i.times.map{gets.to_i}.sort
z=s.inject(:+)
if z%10==0
  s.each do |t|
    if t%10!=0
      puts z-t
      exit
    end
  end
else
  puts z
  exit
end
puts 0
