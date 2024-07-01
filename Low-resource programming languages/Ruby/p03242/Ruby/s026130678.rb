string = gets.chomp
newstring=String.new
for i in (0..2)
  numberi = string[i].to_i
  newnumberi=numberi
  if numberi == 1
     newnumberi =9
  end

  if numberi == 9
    newnumberi =1
  end

  newstring.concat(newnumberi.to_s)
end

puts newstring.to_i
