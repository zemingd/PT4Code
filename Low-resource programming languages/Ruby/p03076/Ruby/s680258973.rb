time_arr = []

5.times {|_| time_arr << STDIN.gets.to_i }

sols = []

def evaluate(sol)
  t = 0
  while sol.size > 1
    t += sol.shift
    t = t.ceil(-1)
  end
  t += sol.shift
  t
end

min = 9999999

[0, 1, 2, 3, 4].combination(5) {|sol|
  d = evaluate(sol)
  min = d if min > d 
}

STDOUT.puts min
