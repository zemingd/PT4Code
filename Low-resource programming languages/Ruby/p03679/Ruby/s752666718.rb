stdin = gets
input = stdin.split(" ")

d = input[0].to_i
a = input[1].to_i
b = input[2].to_i

if b <= a then
    print("delicious")
elsif b <= a + d then
    print("safe")
elsif b > a + d then
    print("dangerous")
end