inputs = readlines
# inputs = "4\n1 2 3 4\n".split("\n")

n = inputs[0].to_i
hs = inputs[1].split(' ').map(&:to_i)

def solve(n, hs)
  answer = 0
  counter = 0
  (0..n - 2).each do |i|
    if hs[i + 1] <= hs[i]
      counter += 1
    else
      answer = counter if counter > answer
      counter = 0
    end
  end
  answer = counter if counter > answer
  answer
end

puts solve(n, hs)

