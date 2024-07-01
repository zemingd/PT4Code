c = gets.chomp.to_s
x = ["a", "e", "i", "u", "o"]
x.each do |abc|
  if abc == c
    print "aaa"
    break
  else
    print "sss"
    break
  end
end