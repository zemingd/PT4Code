while
  a = gets
  if ! a then
    exit
  end
  a.chomp!

  c=0

  while true
    if (! (a =~ /^S*(R+)(S|$)/)) then
      puts c
      break
    end
    x=$1
    y=$2
        
    if c < x.size then
      c = x.size
    end
    a = y
  end
end

