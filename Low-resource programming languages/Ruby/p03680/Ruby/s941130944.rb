n = gets.to_i
a = []
n.times { a << gets.to_i - 1 }

blinked = []
steps = 0
cur = 0
while cur != 1
  steps += 1
  cur = a[cur]
  if blinked[cur]
    puts -1
    exit
  end
  blinked[cur] = true
end

puts steps
