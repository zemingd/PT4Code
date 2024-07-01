a,b,c,d=gets.split.map{|i|i.to_i}
puts case a+b<=>c+d
  when 1 then "Left"
  when -1 then "Right"
  when 0 then "Balanced"
end
