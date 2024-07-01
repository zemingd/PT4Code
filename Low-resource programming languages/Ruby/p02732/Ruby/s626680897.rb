attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

N = attrs[0][0].to_i
A = attrs[1].map{|a| a.to_i}
require 'pp'
for k in 0..N-1 do
  el = A[k]
  A.delete_at(k)
  hash = {}
  res = 0
  A.uniq.each do |a|
    if hash.has_key?(a) then
      res += hash[a]
    else
      cnt = A.count{|z|z==a}
      if cnt > 1 then
        res += cnt*(cnt-1)/2
        hash[a] = cnt*(cnt-1)/2
      else
        hash[a] = 0
      end
    end
  end
  puts res
  A.insert(k,el)
end