N = gets.to_i
$lst = gets.split(' ').map(&:to_i).uniq.sort
lst = $lst

def rep(n)
  n_hash = {'1' => 2, '2' => 5, '3' => 5, '4' => 4, '5' => 5,
     '6' => 6, '7' => 3, '8' => 7, '9' => 6}
  n_hash[n.to_s]
end

def rep_r(n)
  return nil unless $lst.include?(n)
  n_hash = {'2' => [1], '3' => [7] ,'4' => [4] ,'5' => [2, 3, 5],
     '6' => [6, 9], '7' => [8]}
  n_hash[n.to_s]
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
    if rn != nil
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
      if rn != nil
        if rn[-1] > min
          ret[i] = rn[-1].to_s
        else
          ret[-1-i] = rn[-1].to_s
        end
        break
      end
    end
  end
  puts ret
end
