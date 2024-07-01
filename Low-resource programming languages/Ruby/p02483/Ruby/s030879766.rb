require 'scanf'
#p input
input = scanf("%d %d %d")
a = input[0]
if input[0] > input[1]
    work = input[1]
    input[1] = input[0]
    input[0] = work
end

if input[1] > input[2]
    work = input[2]
    input[2] = input[1]
    input[1] = work
end

if input[0] > input[1]
    work = input[1]
    input[1] = input[0]
    input[0] = work
end
printf("%d %d %d\n",input[0],input[1],input[2])