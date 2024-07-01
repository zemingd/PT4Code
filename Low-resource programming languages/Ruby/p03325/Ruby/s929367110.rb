def count_2(k, ret)
  return ret if k % 2 == 1

  count_2(k / 2, ret + 1)
end

def solve(a)
  a.map! { |i| count_2(i, 0) }
    .reduce{ |a, e| a + e }
end

def main
  stdin = STDIN.gets
  na = stdin.split(/\s/).map!(&:to_i)
  n = na[0]
  a = STDIN.gets.split(/\s/).map!(&:to_i)

  puts solve(a)
end

main