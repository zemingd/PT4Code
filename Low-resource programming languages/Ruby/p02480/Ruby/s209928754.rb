require 'scanf'
while line = gets do
    n = line.scanf("%d")[0]
    printf("%d\n", n*n*n)
end