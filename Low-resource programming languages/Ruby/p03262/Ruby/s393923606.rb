N,X = gets.chomp.split(" ").map(&:to_i)
points= gets.chomp.split(" ").map(&:to_i)
points.insert(X)!.sort!
dis=[]
points.each_with_index do |point,i|
  if i!=0
    dis << point - points[i-1]
  end
end

dis = dis.inject{|a, b| gcd(a, b)}


puts dis.max