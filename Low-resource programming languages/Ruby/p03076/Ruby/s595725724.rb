time_arr = []
 
5.times {|_| time_arr << STDIN.gets.to_i }
 
 
def evaluate(sol, time_arr)
  t = 0
  while sol.size > 1
    i = sol.shift
    t += time_arr[i].ceil(-1)
  end
  t += time_arr[sol.shift]
  t
end
 
min = 9999999
 
[0, 1, 2, 3, 4].combination(5) {|sol|
  d = evaluate(sol, time_arr)
  min = d if min > d 
}
 
STDOUT.puts min