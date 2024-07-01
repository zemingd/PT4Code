col1,col2=gets.split
nom1,nom2=gets.chomp.split.map!{|i| i.to_i}
col3=gets.chomp
if col1 == col3
  nom1-=1
else
  nom2-=1
end
puts "#{nom1} #{nom2}"
