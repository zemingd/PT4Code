n=gets.to_i
a=gets.chomp.split(" ").map(&:to_i)

def QuickSort(sort_target,list,left,right)
  i=left+1
  k=right
  while i<k
    i+=1 while sort_target[i]<sort_target[left] and i<right
    k-=1 while sort_target[k]>=sort_target[left] and k>left
    if i<k
      sort_target[i],sort_target[k]=sort_target[k],sort_target[i]
      list[i],list[k]=list[k],list[i]
    end
  end
  if sort_target[left]>sort_target[k]
    sort_target[left],sort_target[k]=sort_target[k],sort_target[left]
    list[left],list[k]=list[k],list[left]
  end
  QuickSort(sort_target,list,left,k-1) if left<k-1
  QuickSort(sort_target,list,k+1,right) if k+1<right
  return list
end
puts QuickSort(a,Array.new(n){|i| i+1},0,n-1).join(" ")
