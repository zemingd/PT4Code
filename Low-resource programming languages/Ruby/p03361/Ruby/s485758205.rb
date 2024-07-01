def check_arround(strings, i, j)
  d = [0, 1, 0, -1]
  4.times{|k|
    if  strings[i+d[k]] != nil && strings[i+d[k]][j+d[k^1]] == "#"
      return true
    end
  }
  false
end


H, W = gets.split.map(&:to_i)
strings = []
H.times{
  strings<< gets.chop
}

canDo = true
H.times{|i|
  W.times{|j|
    if strings[i][j] == "#" && !check_arround(strings, i, j)
      canDo = false
    end
  }
}
if canDo 
  puts "Yes"
else
  puts "No"
end
