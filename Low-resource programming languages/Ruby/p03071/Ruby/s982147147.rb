a,b=gets.chomp.split(" ").map(&:to_i);

r=0
[1,2].each {|v|
  if a > b
    r+=a
    a-=1
  else
    r+=b
    b-=1
  end
}

print(r)
