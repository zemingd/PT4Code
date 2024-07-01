sentence=gets.split.join.downcase
alphabet=("a".."z").to_a
1.upto(alphabet.size) do |i|
  if sentence.count(alphabet[i-1])==0
    print alphabet[i-1],":0\n"
  else
    print alphabet[i-1],":",sentence.count(alphabet[i-1]),"\n"
  end
end