a=gets.to_i

array=gets.split.map(&:to_i)

kei=array.sum

array2=[]
i=0
answer=0
a.times{
      answer=answer+array[i]
      array2<<(2*answer-kei).abs
    
    i=i+1
}


puts array2.min