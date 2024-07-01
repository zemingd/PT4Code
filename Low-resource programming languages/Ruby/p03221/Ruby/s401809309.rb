N, M = gets.split.map(&:to_i)
C = M.times.map{|i| j, y = gets.split.map(&:to_i); {year: y, pref: j } }
S = C.group_by {|c| c[:pref] }
(1 .. N).each do |j|
  if S[j]
    S[j].sort_by!{|c| c[:year] }
    S[j].each_with_index do |c,k|
      c[:id] = sprintf("%06d%06d",c[:pref], k+1)
    end
  end
end
puts C.map{|c| c[:id] }

