n, k, q = gets.to_s.split.map{|t| t.to_i }

seikai_su = [k-q] * n

q.times do
  a = gets.to_i - 1
  seikai_su[a] += 1
end

puts seikai_su.map!{|t| t > 0 ? "Yes" : "No" }