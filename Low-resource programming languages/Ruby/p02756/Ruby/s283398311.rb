s=gets.chomp
flag=false
saki,ato=[],[]
gets.to_i.times{
  _=gets.split
  if _[0]==?1
    flag=!flag
  elsif _[1]==?1
    if flag
      saki<<_[2]
    else
      ato<<_[2]
    end
  else
    if flag
      ato<<_[2]
    else
      saki<<_[2]
    end
  end
}
a=saki.join+s+ato.join
if flag
puts a
else
puts a.reverse
end