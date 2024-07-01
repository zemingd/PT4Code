nm = gets.split.map(&:to_i)
n = nm[0]
m = nm[1]
distance =Hash.new
x = gets.split.map(&:to_i).sort!
positioned = Array.new(m,0)

for i in (0..m-2)
distance[i] = x[i+1]-x[i]
end
distance = distance.sort_by{|k,v| v}



if n >= m
answer = 0


else
  answer = x[m-1] - x[0]
positioned[0] = 1
n -= 1
  while n > 0
    array = distance.pop
    positioned[array[0]+1] =1
    answer -= array[1]
    n -=1
  end

end

p answer
