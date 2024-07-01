gets
r=1
gets.split.map(&:to_i).sort.each{|e|(r=-1; break) if 10**18<r*=e}
puts r
