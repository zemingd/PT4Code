a=10**9

list = []
(-1000).upto(1000) do |i|
  list << [i**5, i]
end

x = gets.to_i
list.each do |v1|
  list.each do |v2|
    if (v1[0] - v2[0]) == x
      printf("%d %d\n",v1[1], v2[1])
      exit
    end
  end
end

