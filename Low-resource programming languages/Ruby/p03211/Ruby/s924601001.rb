s=gets.chomp
mi=1000
for i in 0..s.size-3
  v=s[i..i+2].to_i
  mi=[mi,(v-753).abs].min
end
puts mi