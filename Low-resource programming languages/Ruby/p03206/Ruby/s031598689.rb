input = STDIN.readlines.map{|line|line.strip.split()}
d = input[0][0].to_i

print('Christmas')
(25 - d).times do |n|
    print(' Eve')
end
print("\n")