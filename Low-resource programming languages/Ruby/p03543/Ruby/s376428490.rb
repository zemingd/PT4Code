a = gets.chomp.split('').map(&:to_i)

['+', '-'].repeated_permutation(3) do |arr|
  ans = 0
  4.times do |i|
    if i == 0
      ans = a[i]
    else
      if arr[i-1] == '+'
        ans += a[i]
      else
        ans -= a[i]
      end
    end
    if i == 3 && ans == 7
      puts "#{a[0]}#{arr[0]}#{a[1]}#{arr[1]}#{a[2]}#{arr[2]}#{a[3]}=7"
      exit
    end
  end
end
