lines = $stdin.read
array = lines.split("\n")

TIME = 1000

N,C = array[0].split(" ").map(&:to_i)

mat = Array.new(C).map{Array.new(TIME, 0)}

array[1..array.length].each do |rec|
  s,e,c = rec.split(" ").map(&:to_i)
  mat[c-1][s] += 1
  mat[c-1][e+1] += -1
end

#p mat

mat.map! do |rec|
  rec.map.reduce([]) do |acc, e|
    acc << (acc == [] ? e : acc.last + e)
  end
end

#mat.each{|rec| puts rec.to_s}

add_mat = mat.transpose.map{|a| a.inject(:+) }

#p add_mat

puts add_mat.max

#arr = [0,1,0,0,0]
#cnv = arr.map.reduce([]) do |acc, e|
#  acc << (acc == [] ? e : acc.last + e)
#end
