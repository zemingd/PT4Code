a = 3.times.map{gets.split.map(&:to_i)}.flatten
v=[]
gets.to_i.times do
  x=gets.to_i
  idx=a.find_index(x)
  v[idx]=true if idx
end
puts [[0,3,6],[1,4,7],[2,5,8],[0,1,2],[3,4,5],[6,7,8],[0,4,8],[2,4,6]].any?{|u|u.all?{|i| v[i]}} ? :Yes : :No

