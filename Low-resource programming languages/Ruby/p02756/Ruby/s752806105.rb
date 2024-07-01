s=gets.chomp
gets.to_i.times{
  a=gets.split
  if a[0]==?1
    s.reverse!
  else
    if a[1]==?2
      s+=a[2]
    else
      s=a[2]+s
    end
  end
}
puts s