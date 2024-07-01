n = gets.chomp
max_password = "#{n}#{n}#{n}"
password = '111'
min_n = '1'
count = 0
loop.with_index(1) do |_, i|
  if max_password <= password
    count = i
    break
  end
  if password[2] < n
    password = password.to_i.succ.to_s
    next
  elsif password[1] < n
    password[2] = min_n if password[2] == n
    password = (password.to_i + 10).to_s
    next
   elsif password[0] < n
    password[2] = min_n if password[2] == n
    password[1] = min_n if password[1] == n
    password = (password.to_i + 100).to_s
    next
  end
end
  
puts count