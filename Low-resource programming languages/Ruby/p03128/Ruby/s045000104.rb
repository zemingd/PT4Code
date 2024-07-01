N = gets.to_i
$lst = gets.split(' ').map(&:to_i).uniq.sort
lst = $lst

def rep(n)
  n_hash = {'1' => 2, '2' => 5, '3' => 5, '4' => 4, '5' => 5,
     '6' => 6, '7' => 3, '8' => 7, '9' => 6}
  n_hash[n.to_s]
end

def rep_r(n)
  n_hash = {'2' => [1], '3' => [7] ,'4' => [4] ,'5' => [2, 3, 5],
     '6' => [6, 9], '7' => [8]}
  return nil if n_hash[n.to_s].nil?
  n_hash[n.to_s].reduce([]) do |a, i|
    a << i if $lst.include?(i)
    a
  end
end


min = lst[0]
lst.each_with_index do |n, i|
  if min < n && rep(min) >= rep(n)
    min = n
  end
end

if N % rep(min) == 0
  puts min.to_s * (N / rep(min))
else
  amari = N % rep(min)
  ret = min.to_s * (N / rep(min))

  i = -1
  loop do
    i += 1
    amari += rep(min)
    rn = rep_r(amari)
    unless rn.nil? || rn.size.zero?
      if rn[-1] > min
        ret[i] = rn[-1].to_s
      else
        ret[-1-i] = rn[-1].to_s
      end
      break
    end

    amari2 = 0
    loop do 
      amari -= 1
      amari2 += 1
      rn2 = rep_r(amari2)
      unless rn2.nil? || rn2.size.zero?
        if rn2[-1] > min
          ret[i] = rn2[-1].to_s
          break
        elsif rn2[-1] < min
          ret[-1-i] = rn2[-1].to_s
          break
        end
      end
    end
  end
  puts ret.to_s.split('').each.sort.reverse.join.to_i
end
