require 'scanf'
#p input
input = scanf("%d %d")
printf("%d %d %f\n",input[0]/input[1],input[0]%input[1],input[0]/input[1].to_f)