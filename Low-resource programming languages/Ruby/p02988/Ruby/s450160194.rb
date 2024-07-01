n = gets.to_i
a = gets.split.map &:to_i
p [*1...n-1].select{|i|a[i-1]<a[i]&&a[i]<a[i+1] || a[i+1]<a[i]&&a[i]<a[i-1]}.count