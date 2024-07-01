num=Array.new

n=gets.to_i

n.times do
 s=gets.to_i
 if num.include?(s)
   num.delete(s)
   else
     num<<s
 end
end

puts num.size
