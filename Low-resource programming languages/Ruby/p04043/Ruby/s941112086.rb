a=gets.split.map &:to_i;
puts a.permutation(3).count{|a,b,c|a==5&&b==7&&c==5}>0?"YES":"NO"
