a,b=gets.chomp.split()
c,d=gets.chomp.split().map(&:to_i)
e=gets.to_s.chomp
if a.gsub(/[[:space:]]/, '')==e
  puts [c-1,d].join(" ")
else b == e
  puts [c,d-1].join(" ")
end  