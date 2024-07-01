s = gets.chomp
n = s.size


if s == s.reverse
  n_1_helf = (n-1)/2-1
  txt = s[0..n_1_helf]
  if txt == txt.reverse
    n_3_half = (n+3)/2-1
    foo_txt = s[n_3_half..-1]
    if foo_txt == foo_txt.reverse
      puts 'Yes'
    else
      puts 'No'
    end
  else
    puts 'No'
  end
else
  puts 'No'
end
