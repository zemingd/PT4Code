nums = gets.strip.split(" ").map do |i|
  i.to_i
end
n=nums[0]
m=nums[1]

h = gets.strip.split(" ").map do |i|
  i.to_i
end

a = []
n.times { |i|
  a[i] =  []
}

m.times {
  way = gets.strip.split(" ").map do |i|
    i.to_i
  end
  a[way[0]-1].push(way[1]-1)
  a[way[1]-1].push(way[0]-1)
}

sum = n

n.times {|i|
  flag=true
  a[i].length.times{|j|
    if( h[i] <= h[a[i][j]])
      sum-=1 if flag
      flag=false
    end
  }
}

puts sum