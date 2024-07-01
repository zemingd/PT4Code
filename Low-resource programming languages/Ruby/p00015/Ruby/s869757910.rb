while f = gets
  f = f.to_i
  s = gets.to_i
  if (f+s).size <= 80
    puts f + s
  else
    puts 'overflow'
  end
end