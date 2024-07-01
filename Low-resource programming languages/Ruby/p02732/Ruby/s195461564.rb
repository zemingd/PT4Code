n=gets.to_i
array=gets.split.map(&:to_i)

countarray=Array.new(n,0)
selectarray=Array.new(n,0)
answerarray=Array.new(n,0)

array.map{|value|
    countarray[value-1]+=1
}

countarray.map.with_index{|value,index|
    selectarray[index]=value*(value-1)/2
}

sum=selectarray.inject(:+)

answerarray.map.with_index{|value,index|
    if countarray[index]==0
        answerarray[index]
    else
    answerarray[index]=sum-selectarray[index]+(countarray[index]-1)*(countarray[index]-2)/2
    end
}


i=0
n.times{
    puts answerarray[array[i]-1]
    i+=1
}