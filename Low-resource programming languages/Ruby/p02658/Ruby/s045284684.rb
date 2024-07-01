n = readline.to_i
a = readline.split.map(&:to_i).sort

answer = a.reduce do |result, item|
  result *= item

  break -1 if result > 10 ** 18

  result
end

print(answer)
