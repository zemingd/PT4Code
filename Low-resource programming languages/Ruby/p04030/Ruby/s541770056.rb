s = gets.chomp.split("")
ans = s.inject([]) do |acc, s|
  case s
  when 'B'
    acc.pop
  else
    acc << s.to_i
  end
  acc
end

puts ans.join