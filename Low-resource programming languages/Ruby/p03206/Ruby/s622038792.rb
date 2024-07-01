def main
  d = gets.chomp.to_i

  s = case d
      when 22 then 'Christmas Eve Eve Eve'
      when 23 then 'Christmas Eve Eve'
      when 24 then 'Christmas Eve'
      when 25 then 'Christmas'
      end

  puts s
end

if __FILE__ == $0
  main
end
