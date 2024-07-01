a1,a2,a3,b = Array.new
a1 = gets.chomp.split(' ').map(&:to_i)
a2 = gets.chomp.split(' ').map(&:to_i)
a3 = gets.chomp.split(' ').map(&:to_i)
n =  gets.chomp.to_i

n.times do
 num = gets.chomp.to_i
 if a1.index(num) != nil
   a1[a1.index(num)] = -1
 end
 if a2.index(num) != nil
   a2[a2.index(num)] = -1
 end
 if a3.index(num) != nil
 a3[a3.index(num)] = -1
 end
end
if a1 == [-1,-1,-1] || a2 == [-1,-1,-1] || a3 == [-1,-1,-1] || (a1[0] == a2[0] && a2[0] == a3[0]) || (a1[1] == a2[1] && a2[1] == a3[1]) || (a1[2] == a2[2] && a2[2] == a3[2]) ||( a1[0] == a2[1] && a2[1] == a3[2] )||(a1[2] == a2[1] && a2[1]== a3[0])
  puts "Yes"
else
  puts "No"
end