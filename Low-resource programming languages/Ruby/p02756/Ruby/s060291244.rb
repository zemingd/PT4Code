s = gets.chomp
q = gets.chomp.to_i
query_ary =[]
q.times do
  query_ary << gets.chomp.split(" ")
end
query_ary.each{|elem|
  if elem[0] == "1"
    s.reverse!
  elsif elem[0]=="2"
    if elem[1] == "1"
      s.insert(0,elem[2])
    else
      s << elem[2]
    end
  end
  }
puts s