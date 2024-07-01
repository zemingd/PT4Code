n,m=STDIN.gets.chomp.split(/ +/).map(&:to_i)
prefs = {}
m.times do |i|
  p,y=STDIN.gets.chomp.split(/ +/).map(&:to_i)
  if prefs[p] == nil
    prefs[p] = []
  end
  prefs[p] << [i,y]
end

prefs.each_value do  |pref|
  pref.sort!{ |a,b| a[1] <=> b[1] }
  pref.each_with_index{ |x,i| x[1]=i + 1 }
end

cities= []

prefs.each do |pref,value|
  value.each do |v|
    cities << [ v[0], pref, v[1] ]
  end
end

cities.sort!{|a,b| a[0]<=>b[0]}

cities.each do |city|
  puts "%06d%06d" % [city[1],city[2]]
end 
    

