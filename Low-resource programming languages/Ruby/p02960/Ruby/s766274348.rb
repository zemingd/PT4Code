n = gets.chomp.split("").reverse
n.map!{|item|
if item != "?" then
  item.to_i
else
  item.to_s
end
}
mod = []
lit = 0
n.each_with_index{|item, t|
  tmp = []
  if item != "?" then
    lit +=( (10**t)*item )% 13
  else
    10.times{|l|
      tmp.push(((10**t) * l )% 13)
    }
    mod[t]=tmp
  end
}
lit = lit%13
mod.compact!
x = Array.new(n.count+5).map{Array.new(13,0)}
x[0][lit] = 1
mod.each_with_index{|item, t|
  item.each{|i|
    x[t].each_with_index{|f, m|
      x[t+1][(i + m)%13] += f
      x[t+1][(i + m)%13] %= 1000000007
    }
}
}
puts x[mod.count][5]%1000000007