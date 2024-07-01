def check_res(h,w,a)
  for i in 0...h
    for j in 0...w
      if(a[i][j]==".")
        return 0
      end
    end
  end
  return 1
end

def revert_mat(h,w,i,j,a)
  if(i==0)
    if(j==0)
      a[i][j+1]="#"
      a[i+1][j]="#"
    elsif(j==(w-1))
      a[i][j-1]="#"
      a[i+1][j]="#"
    else
      a[i][j-1]="#"
      a[i][j+1]="#"
      a[i+1][j]="#"
    end
  elsif(i==(h-1))
    if(j==0)
      a[i-1][j]="#"
      a[i][j+1]="#"
    elsif(j==(w-1))
      a[i-1][j]="#"
      a[i][j-1]="#"
    else
      a[i-1][j]="#"
      a[i][j-1]="#"
      a[i][j+1]="#"
    end
  else
   	if(j==0)
      a[i-1][j]="#"
      a[i][j+1]="#"
      a[i+1][j]="#"
    elsif(j==(w-1))
      a[i-1][j]="#"
      a[i][j-1]="#"
      a[i+1][j]="#"
    else
      a[i-1][j]="#"
      a[i][j-1]="#"
      a[i][j+1]="#"
      a[i+1][j]="#"
    end
  end
  return a
end

def op_mat(h,w,a)
  b=Array.new(h).map{Array.new(w,0)}
  b=a.map(&:dup)
  cnt=0
  until(check_res(h,w,a)==1)
  	for i in 0...h
    	for j in 0...w
      		if(a[i][j]=="#")
              b=revert_mat(h,w,i,j,b)
      		end
    	end
  	end
    cnt+=1
    a=b.map(&:dup)
  end
  return cnt
end

def mat_length(h,w,a)
  b=Array.new(h).map{Array.new(w,0)}
  for i in 0...h
    for j in 0...w
      
    end
  end
end


h, w = gets.chop.split.map(&:to_i)
a=Array.new(h).map{Array.new(w,0)}

h.times{|i|
  line=gets.chop.split.map(&:to_s)
  a[i]=line[0].split("")
}

puts op_mat(h,w,a)

