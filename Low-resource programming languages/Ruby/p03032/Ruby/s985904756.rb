N, K = gets.split.map(&:to_i)
v = gets.split.map(&:to_i)


def action_a(v, item, rc)
  if rc == 0
    return item.size > 0 ? item.inject(:+) : 0
  end
  if v.size > 0
    item << v.shift
  end

  [action_a(v.dup, item.dup, rc - 1), action_b(v.dup, item.dup, rc - 1), action_c(v.dup, item.dup, rc - 1), action_d(v.dup, item.dup, rc - 1)].max
end

def action_b(v, item, rc)
  if rc == 0
    return item.size > 0 ? item.inject(:+) : 0
  end
  if v.size > 0
    item << v.pop
  end

  [action_a(v.dup, item.dup, rc - 1), action_b(v.dup, item.dup, rc - 1), action_c(v.dup, item.dup, rc - 1), action_d(v.dup, item.dup, rc - 1)].max
end

def action_c(v, item, rc)
  if rc == 0
    return item.size > 0 ? item.inject(:+) : 0
  end
  if item.size > 0
    item.sort!
    v.unshift(item.shift)
  end

  [action_a(v.dup, item.dup, rc - 1), action_b(v.dup, item.dup, rc - 1), action_c(v.dup, item.dup, rc - 1), action_d(v.dup, item.dup, rc - 1)].max
end

def action_d(v, item, rc)
  if rc == 0
    return item.size > 0 ? item.inject(:+) : 0
  end
  if item.size > 0
    item.sort!
    v << item.shift
  end
  [action_a(v.dup, item.dup, rc - 1), action_b(v.dup, item.dup, rc - 1), action_c(v.dup, item.dup, rc - 1), action_d(v.dup, item.dup, rc - 1)].max
end

p [action_a(v.dup, [], K), action_b(v.dup, [], K), action_c(v.dup, [], K), action_d(v.dup, [], K)].max