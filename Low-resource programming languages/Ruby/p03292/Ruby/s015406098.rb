a, b, c = gets.chomp.split(" ").map(&:to_i);
if (a >= 1 && a <= 100) && (b >= 1 && b <= 100) && (c >= 1 && c <= 100) then
  tasks = [a, b, c]
  tasks.sort!
  costs = (tasks[1] - tasks[0]) + (tasks[2] - tasks[1])
  puts costs
end
