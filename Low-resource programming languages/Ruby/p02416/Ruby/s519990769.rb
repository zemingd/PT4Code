a=Array.new()
loop do
   x=gets.to_s
   if x.to_i==0 then break end
   total=0
   for i in 0..x.length-1 do
       total=total+x[i].to_i
   end
   a.push(total)
end

a.each do |e|
  puts e
end