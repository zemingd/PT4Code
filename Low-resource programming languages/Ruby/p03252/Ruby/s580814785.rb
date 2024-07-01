s=gets.chomp
t=gets.chomp
h={}
("a".."z").each do |c|
  h[c]=nil
end
n.times do |i|
  if h[s[i]]==nil
    h[s[i]]=t[i]
  else
    if h[s[i]]!=t[i]
      puts "No"
      exit
    end
  end
end
("a".."z").each do |c|
  if h[c]!=nil
    d=c
    while true
      e=h[d]
      if e==c
        h
      
    end
  end
end

