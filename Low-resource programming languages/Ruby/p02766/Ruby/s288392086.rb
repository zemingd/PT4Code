N, K = gets.chop.split.map(&:to_i)

def dev(a, b)
  return a / b, a % b
end

def main(n, k, count)
  ans, sur = dev(n, k)

  if ans == 0
    return puts count + 1
  else
    main(ans, k, count + 1)
  end
end

main(N, K, 0)
