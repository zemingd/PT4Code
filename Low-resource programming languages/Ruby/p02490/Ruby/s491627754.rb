STDIN.each{ |l|
  a = l.split(' ')
  if a.all?{ |p| p.to_i == 0 }
    break
  else
    print a.sort.join(' ')
  end
}