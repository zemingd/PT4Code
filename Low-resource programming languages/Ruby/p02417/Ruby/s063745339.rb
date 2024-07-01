sentence=gets.split.join
alphabet=("a".."z").to_a
alphabet.size.times do |i|
  if sentence.count(alphabet[i])==0
    print alphabet[i],":0\n"
  else
    print alphabet[i],":",sentence.count(alphabet[i]),"\n"
  end
end