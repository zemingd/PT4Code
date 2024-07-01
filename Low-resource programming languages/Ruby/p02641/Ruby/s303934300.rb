x, n = gets.chomp.split(' ').map{|i| i.to_i }
if n == 0
  puts x
  exit
end

pset = {}
pp = gets.chomp.split(' ').map{|i|
  ii = i.to_i
  pset[ii] = true
}

if pset[x].nil?
  puts x
else
  cursordiff = 1
  cursormax = x + cursordiff
  cursormin = x - cursordiff
  while pset[cursormax] && pset[cursormin]
    cursordiff += 1
    cursormax = x + cursordiff
    cursormin = x - cursordiff
  end

  if pset[cursormin].nil?
    puts cursormin
  else
    puts cursormax
  end
end
