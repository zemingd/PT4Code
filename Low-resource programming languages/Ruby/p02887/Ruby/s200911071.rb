n = gets.to_i
cs = gets.split("")
 
def f(cnt, cols, now)
 if cols.empty? then
   puts cnt
 elsif cols[0]==now then
   f(cnt, cols.drop(1), now)
 else
   f(cnt+1, cols.drop(1), cols[0])
 end
end
 
f(1, cs, cs[0])