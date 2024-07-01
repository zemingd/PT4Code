STDIN.each{ |l|
  a = l.split(' ').map(&:to_i)
  if a.all?{ |p| p == 0 } then
    break
  else
    puts a.sort.join(' ')
  end
}