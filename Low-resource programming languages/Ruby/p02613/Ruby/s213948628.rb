n=gets.to_i
r={}
r["AC"]=0
r["WA"]=0
r["TLE"]=0
r["RE"]=0

n.times do
  r[gets.chomp]+=1
end
r.each do |k,v|
  puts "#{k} x #{v}"
end