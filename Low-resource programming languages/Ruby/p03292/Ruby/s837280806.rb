a,b,c = gets.chomp.split.map(&:to_i)
#6tooritamesu
# abc
task1 = 0 + (b-a).abs+(c-b).abs
# acb
task2 = 0 + (c-a).abs+(b-c).abs
# bac
task3 = 0 + (a-b).abs+(c-a).abs
# bca
task4 = 0 + (b-c).abs+(a-c).abs
# cab
task5 = 0 + (c-a).abs+(a-b).abs
# cba
task6 = 0 + (c-b).abs+(a-b).abs
ans = [task1,task2,task3,task4,task5,task6].min
puts ans
