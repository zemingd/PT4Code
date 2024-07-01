x = {}
("a".."z").each{|i| x[i]=0}

while line=gets
  line.chars {|c|
    c=c.downcase
    if x[c]
      x[c] +=1
    else
      x[c]=1
    end
  }
end

("a".."z").each{|c|
  puts "#{c} : #{x[c]}"
}

