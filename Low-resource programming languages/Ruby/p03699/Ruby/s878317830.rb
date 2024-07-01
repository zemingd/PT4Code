S = Array.new(gets.to_i)
S.map!{gets.to_i}

wk = S.inject(:+)
if wk % 10 == 0 then
  t = S.select{|s| s % 10 > 0}.min
  puts t.nil? ? 0 : wk - t
    
else
  puts wk
end
