s=gets.chomp
stack=[]
ans=0
s.each_char{|c|
  if stack.empty?
    stack << c
  elsif stack.last != c
    stack.pop
    ans+=1
  else
    stack << c
  end
}

puts 2*ans