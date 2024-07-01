n = gets.to_i
h = {"AC" => 0, "WA" => 0, "TLE" => 0, "RE" => 0}
n.times do
  s = gets.chomp
  h[s]+=1
end
h.each{|k,v| puts "#{k} x #{v}"}