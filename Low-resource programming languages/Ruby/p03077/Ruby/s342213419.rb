n=gets.to_i
move=5.times.map{gets.to_i}

people=Array.new(6,0)
people[0]=n
k=0
100.times{|i|
  k=[move[4],people[4]].min
  5.downto(1){|i|
    tr=[move[i-1],people[i-1]].min
    people[i]+=tr
    people[i-1]-=tr
  }
  if people.last==n
    puts i+1
    exit
  end
}

q,r=(n-people[5]).divmod(k)
q+=1 if r>0
puts 100+q