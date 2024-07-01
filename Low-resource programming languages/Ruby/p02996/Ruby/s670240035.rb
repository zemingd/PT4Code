def main
  n = gets.to_i
  tasks = []
  n.times {tasks << gets.split.map(&:to_i)}
  tasks.sort! {|a, b| a[1] <=> b[1]}
  t = 0
  flag = true
  tasks.each do |a, b|
    t += a
    flag = false if b < t
  end

  if flag
    puts "Yes"
  else
    puts "No"
  end
end

main if $0 == __FILE__
