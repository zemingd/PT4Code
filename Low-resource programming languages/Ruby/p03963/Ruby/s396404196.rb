def kkk(v,nest)
  r = 0
  if v!=nil then
    s = sprintf("%d,%d", v,nest)
  end
  return 1 if nest==N
  return $memo[s] if $memo.has_key?(s)
  K.times do |i|
    if v!=nil then
      next if i==v
    end
    r += kkk(i,nest+1)
  end
  $memo[s] = r
  return r
end

N,K = gets.split(/\s/).map {|s|s.to_i}
$memo = Hash.new

puts kkk(nil, 0)