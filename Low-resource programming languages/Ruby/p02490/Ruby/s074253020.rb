require 'scanf'
#p input
input = scanf("%d %d")
while true
	if input[0]==0 && input[1]==0
		break
	end
    if input[0] > input[1]
        work = input[0]
        input[0] = input[1]
        input[1] = work
    end
    printf("%d %d\n",input[0],input[1])
    input = scanf("%d %d")
end