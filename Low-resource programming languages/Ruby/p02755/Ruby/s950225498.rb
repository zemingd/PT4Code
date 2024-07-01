a,b = gets.split.map(&:to_i)

aa = ((a.to_f / 8.0).to_f * 100).round 
bb = ((b.to_f / 10.0).to_f * 100).round 

if aa == bb
  puts aa
elsif aa / bb < 0.8
  puts -1
else
  puts [aa,bb].max
end