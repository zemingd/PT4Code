lines = $stdin.read
array = lines.split("\n")

TIME = 10**5

N,C = array[0].split(" ").map(&:to_i)

vec = Array.new(TIME){0}

array[1..N+1].each do |rec|
  s,e,c  = rec.split(" ").map(&:to_i)
  vec[s] = vec[s] + 1
#  vec[e+1] = (vec[e+1] - 1).to_i
end