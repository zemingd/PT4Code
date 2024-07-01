def do_cd(possession, queue, k)
  #p [:cd, possession, queue, k]
  if k == 0 || possession.empty?
    possession.inject(0,:+)
  else
    possession = possession.sort
    possession.drop([possession.count { |n| n < 0 }, k].min).inject(0,:+)
  end
end

def do_b(possession, queue, k)
  #p [:b, possession, queue, k]
  if k == 0
    possession.inject(0,:+)
  else
    if queue.size == 0
      do_cd(possession, queue, k)
    else
      [do_b(possession + [queue[-1]], queue[0..-2], k - 1),
       do_cd(possession, queue, k),
       possession.inject(0,:+)].max
    end
  end
end

def do_a(possession, queue, k)
  #p [:a, possession, queue, k]
  if k == 0
    possession.inject(0,:+)
  else
    if queue.size == 0
      do_cd(possession, queue, k)
    else
      [do_a(possession + [queue[0]], queue.drop(1), k - 1),
       do_b(possession, queue, k),
       possession.inject(0,:+)].max
    end
  end
end

n, k = gets.split.map(&:to_i)
queue = gets.split.map(&:to_i)

puts do_a([], queue, k)
