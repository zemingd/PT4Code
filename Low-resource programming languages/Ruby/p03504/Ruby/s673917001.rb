lines = $stdin.read
array = lines.split("\n")

TIME = 10**5

N,C = array[0].split(" ").map(&:to_i)

vec = Array.new(TIME){0}

array[1..N+1].each do |rec|
  s,e,c = rec.split(" ").map(&:to_i)
#  vec[s]   = (vec[s]   + 1).to_i
#  vec[e+1] = (vec[e+1] - 1).to_i
end

#ans = Array.new(vec.length){0}
#ans[0] = vec[0]
#
#for i in 1..ans.length
#  ans[i] = ans[i-1] + vec[i-1]
#end

#puts ans.to_s
#puts ans.max