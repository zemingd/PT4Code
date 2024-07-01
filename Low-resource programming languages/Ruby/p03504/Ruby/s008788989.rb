lines = $stdin.read
array = lines.split("\n")

TIME = 10**5

N,C = array[0].split(" ").map(&:to_i)

vec = Array.new(TIME){0}

array[1..array.length].each do |rec|
  s,e,c = rec.split(" ").map(&:to_i)
  vec[s]   += 1
  vec[e+1] -= 1
end

#p vec

ans = Array.new(vec.length){0}
ans[0] = vec[0]

for i in 1..ans.length
  ans[i] = ans[i-1] + vec[i-1]
end

#puts ans.to_s
puts ans.max