n,K = gets.split(' ').map!(&:to_i)

D = gets.split(' ')
while TRUE do
    n_uniq = n.to_s.split('').uniq

    if (n_uniq - D).length == n_uniq.length
        puts n
        break
    else
        n += 1
    end
end
  
      