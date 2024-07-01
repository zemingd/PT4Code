n = gets.to_i
cols = gets.split("")
 
def f(cnt, cols, now)
 if cols.empty?
   puts cnt
 elsif cols[0]==now
   f(cnt, cols.drop(1), now)
 else
   f(cnt+1, cols.drop(1), cols[0])
 end
end
 
f(1, cols, cols[0])