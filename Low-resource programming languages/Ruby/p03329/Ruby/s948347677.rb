p (a=[*0..n=gets.to_i]).map{|i|
i>0&&a[i]=([1,6,9].map{|p|[*1..20].map{|x|(q=i-p**x)<0?10**6:a[q]}}.flatten).min+1
}[n]+1