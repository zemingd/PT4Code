a,b = gets.split
ar = []
(0..100100).to_a.each do |v|
  ar << v**2
end

if ar.include?((a+b).to_i)
  "Yes"
else
  "No"
end
