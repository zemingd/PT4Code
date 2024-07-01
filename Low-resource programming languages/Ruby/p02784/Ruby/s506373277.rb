h,n=gets.split.map &:to_i
arr=gets.split.map &:to_i
res=arr.inject :+
puts h<=res ? "Yes" : "No"