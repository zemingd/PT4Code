def cal(h,x,y,cx,cy)
  return (h+(x-cx).abs+(y-cy).abs)
end
n=gets.to_i;
xs=[]
n.times do
  xs<<gets.split.map(&:to_i)
end

ans=[]
check=[]
flag=true
101.times do|cx|
  101.times do|cy|
    check=[]
    flag=true
    xs.each{|x|
      check<<cal(x[2],x[0],x[1],cx,cy)
      if check.uniq.size!=1
        flag = false
        break
      end
    }
    if flag
      ans << [cx,cy,check[0]]
    end
  end
end
max=-1
id=-1
ans.each_with_index{|an,i|
  if max<an[2]
    id = i
  end
}
puts ans[id].join(" ")