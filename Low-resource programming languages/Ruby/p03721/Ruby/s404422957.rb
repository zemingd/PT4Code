N, K = gets.split(" ").map(&:to_i)

ARR = []
while c = gets&.split(" ")&.map(&:to_i)
  ARR << c
end
ARR.sort!{|v1, v2| v1[0] <=> v2[0]}

k = 0;
ARR.each{|v|
  k += v[1]
  if K <= k
    puts v[1]
    break
  end
}
