def main
    n = gets.to_i
    cnt = 1
    tmp= 0
    x=0
    while tmp < n
        m = gets.to_i
        cnt=cnt*m

        if cnt > 1000000000000000000
          x=-1
        end

        tmp += 1
    end
    
    if x==0 then
      print cnt
    else 
      print -1
    end
end