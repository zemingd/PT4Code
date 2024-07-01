s=gets
isb=false
0.upto(9){|i| isb=true if (s=~/#{i}{2}+/)!=nil}
puts isb ? 'Bad':'Good'