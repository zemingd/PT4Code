n = gets.to_i
w = Array.new
1.step(n,1){ |i|
  w[i-1] = gets.chop
}

if w.uniq == w then
  r = true
else
  r = false
end

tmp = w[0]
ok = true
w.shift
w.each{ |i|
  unless tmp[-1] == i[0] then
    ok = false
    break
  end
  tmp = i
}

if r && ok then
  puts "Yes"
else
  puts "No"
end
