n=gets.to_i
s=[]
s=n.times.map{gets.to_i}.sort
z=s.inject(:+)
if z%10==0
  s.each do |si|
    if si%10!=0
      puts z-si
      exit
    end
  end
else
  puts z
  exit
end
puts 0
