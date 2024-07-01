a,b,c,d,e,f = gets.split(' ').map{|i| i.to_i}

enable_water_net = []
enable_sugar_net = []
res = []

for i in 0..f
  for j in 0..f
    water_net = 100*a*i + 100*b*j
    if water_net <= f
      enable_water_net.push(water_net)
    end
  end
end

for i in 0..f
  for j in 0..f
    sugar_net = i*c + j*d
    if sugar_net <= f
      enable_sugar_net.push(sugar_net)
    end
  end
end

enable_water_net.each{|w|
  enable_sugar_net.each{|s|
    if (w+s > 0) && (w+s <= f) && ((w/100)*e >=s)
      res.push({total: w+s, sugar: s, strength: (100*s)/(w+s)})
    end
  }
}

res.sort!{|a, b| b[:strength] <=> a[:strength]}

puts "#{res.first[:total]} #{res.first[:sugar]}"