n,m=gets.split.map &:to_i
a=[?.*(m+2)]+(1..n).map{?.+gets.chomp+?.}+[?.*(m+2)]
puts (1..n*m).any?{|e|
    i, j=e/m, e%m
    a[i][j]==?# && a[i-1][j]==?. && a[i+1][j]==?. && a[i][j-1]==?. && a[i][j+1]==?.
} ? :No : :Yes