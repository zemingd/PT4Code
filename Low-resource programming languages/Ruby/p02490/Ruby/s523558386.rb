STDIN.each{ |l|
  a = l.split(' ')
  if a.all?{ |p| p.to_i == 0 } then
    break
  else
    puts a.sort.join(' ')
  end
}