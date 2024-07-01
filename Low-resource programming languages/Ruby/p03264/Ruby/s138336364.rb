k = gets.to_i
kisu = []
gusu = []

for i in 1..k do
 if i%2==1
   kisu.push(i)
 else
   gusu.push(i)
 end
end
puts kisu.length*gusu.length