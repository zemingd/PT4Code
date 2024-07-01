a,b,c,d=gets.split.map(&:to_i)
judgment = ["Balanced","Left","Right"]
puts judgment[a+b<=>c+d]