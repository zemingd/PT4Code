a=gets.strip.to_i
t=0
(1..1000).each do |i|
  (1..10)..each do |j|
    if i**j<=a && t<a
      t=a
    end
  end
end
puts t
