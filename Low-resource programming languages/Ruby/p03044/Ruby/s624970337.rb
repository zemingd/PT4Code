N = gets.to_i

nodes = []

n_c = []


(N-1).times do |i|
  u, v, w = gets.split.map(&:to_i)

  if (u < v)

      nodes[u] = {} if (nodes[u].nil?)
      nodes[u][v] = w

  else

      nodes[v] = {} if (nodes[v].nil?)
      nodes[v][u] = w

  end



end

first = true

nodes.length.times do |i|
  
  next if nodes[i] == nil 

  if first
    n_c[i] = 1 
    first = false
  end




#  p nodes

  nodes[i].each do |k , v|

   # p k
   # p "=>"
   # p v

    #next if n_c[i] == nil

    if v%2 == 0
      n_c[k] = n_c[i]
    else
      n_c[k] = n_c[i] * -1
    end

  end
    

end


#p n_c

n_c.length.times do |i|
  next if i == 0

  if n_c[i] == 1
    puts 1
  else
    puts 0
  end


end

#puts ans
