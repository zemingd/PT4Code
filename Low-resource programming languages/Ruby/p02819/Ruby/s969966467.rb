def get_int
  gets.chop.to_i
end

def get_ints
  gets.chop.split.map(&:to_i)
end

def get_double
  gets.chop.to_f
end

def is_prime(x)
  if x == 2 or x == 3
    return true
  end
  if x % 2 == 0
    return false
  end
  3.step(Math.sqrt(x).to_i + 1, 2) do |i|
    if x % i == 0
      return false
    end
  end
  return true
end

def main
  x = get_int
  while true
    if is_prime(x)
      puts x
      exit 0
    end
    x += 1
  end
end

if __FILE__ == $0
  main
end