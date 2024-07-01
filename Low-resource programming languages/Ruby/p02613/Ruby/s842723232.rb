n = gets.to_i
s = n.times.map{gets.chomp}
h = Hash.new(0)
s.each{|x|
  h[x] += 1
}

['AC','WA','TLE','RE'].each{|x|
  puts x+' x '+h[x].to_s
}
