x,k,d = gets.split(' ').map(&:to_i)
odd = (k % 2).odd?
d2 = d * 2
cand=[]
leftest = x - d * k
rightest = x + d*k
cand << leftest.abs
cand << rightest.abs
if leftest < 0 && rightest > 0 
  nr =  (x + (odd ? d : 0)) % d2
  nl = nr - d2
  cand << nr.abs
  cand << nl.abs
end
p cand.min