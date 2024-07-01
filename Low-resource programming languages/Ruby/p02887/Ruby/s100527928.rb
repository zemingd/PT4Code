gets.to_i
cs = gets.split("")
 
def f(cnt, cols, nw)
 if cols.empty? then
   puts cnt
 elsif cols[0]==nw then
   f(cnt, cols.drop(1), nw)
 else
   f(cnt+1, cols.drop(1), cols[0])
 end
end
 
f(1, cs, cs[0])