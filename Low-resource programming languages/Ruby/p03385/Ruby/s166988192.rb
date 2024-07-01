# return x where
#   (when trueside<falseside)
#     [trueside,falseside) and yield(x)==true and (yield(x+tol)==false or falseside <= x+tol)
#   (when falseside<trueside)
#     (falseside,trueside] and yield(x)==true and (yield(x-tol)==false or x-tol <= falseside) 
# if trueside and falseside and tol is integer then do integer binary search
# note: neither yield(trueside) nor yield(falseside) were not called
def bsearch(trueside,falseside,tol=10**(-9))
  ok,ng=trueside,falseside
  div=tol.instance_of?(Integer) ? 2 : 2.0
  while((ok-ng).abs>tol) do
      mid=(ng+ok)/div
      if(yield(mid))
          ok=mid
      else
          ng=mid
      end
  end
  return ok
end


def solve(a,b)
  target=a*b

  temp=bsearch(0,2*10**9+1,tol=1){|x|
    if x%2==0
      next (x/2)**2<=target
    else
      next (x/2)*(x/2+1)<target
    end
  }
  if (temp/2)**2==target
    if a==b
      return temp-2
    else
      return temp-3
    end
  end
  return temp-2
end

N=gets.to_i
ans=[]
N.times do
  ans << solve(*(gets.split.map(&:to_i)))
end
puts ans