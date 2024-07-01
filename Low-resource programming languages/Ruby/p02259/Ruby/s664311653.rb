MODE = "stdio"
#require 'matrix'
#include Math
line = Array.new

if(defined? MODE)
  line = STDIN.read.split("\n")
else
  tmp = '6
  5 2 4 6 1 3'.split("\n")
  tmp.each{|s|
    line << s.strip
  }
end


n = line[0].to_i

arr = line[1].split(" ").map(&:to_i)

flag = 1
i = 0
cnt = 0
while flag==1
  flag=0
  (n-1).downto(i+1) do |j|
    if arr[j]<arr[j-1]
      arr[j], arr[j-1] = arr[j-1], arr[j]
      flag=1
      cnt+=1
    end
  end
  i += 1
end
puts arr.join(" ")
puts cnt