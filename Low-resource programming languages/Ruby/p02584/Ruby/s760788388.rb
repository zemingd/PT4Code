x,k,d = $stdin.gets.chomp.split(' ').map(&:to_i)

if x < 0
  nums = (-x).divmod(d)
  if nums[0] > k
    puts (x + (k*d)).abs
  else
    poj = -nums[1]
    if (k - nums[0]) % 2 == 0
      puts (poj).abs
    else
      puts (poj+d).abs
    end
  end
else
  nums  = (x).divmod(d)
    if nums[0] > k
    puts (x - (k*d)).abs
  else
    poj = nums[1]
    if (k - nums[0]) % 2 == 0
      puts (poj).abs
    else
      puts (poj-d).abs
    end
    end
end