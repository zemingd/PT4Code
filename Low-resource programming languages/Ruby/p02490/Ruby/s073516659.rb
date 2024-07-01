while true
require 'scanf'
input=scanf("%d %d")
break if input[0]==0 && input[1]==0
if input[0]>input[1]
printf("%d %d\n",input[1],input[0])
else
printf("%d %d\n",input[0],input[1])
end
end