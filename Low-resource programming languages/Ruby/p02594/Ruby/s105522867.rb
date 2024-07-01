nom,dis = gets.split(" ").map!{|i| i.to_i}
yoko=Array.new(nom)
tate=Array.new(nom)

for i in 0..nom-1
  yoko[i],tate[i]= gets.split(" ").map!{|i| i.to_i}
end
kazu=0
for j in 0..nom-1
  if dis**2>=(yoko[j]**2+tate[j]**2)
    kazu+=1
  end
end
puts kazu
