A, B, C = gets.split.map(&:to_i)

if A < 0 || B < 0 || C < 0
  if (A < 0 && B < 0) || C < 0
    puts 'No'
  elsif A > 0
    if A < C
      puts 'Yes'
    else
      puts 'No'
    end
  elsif B > 0
    if B < C
      puts 'Yes'
    else
      puts 'No'
    end
  end
elsif C > A + B + (2 * Math.sqrt(A*B))
  puts 'Yes'
else
  puts 'No'
end