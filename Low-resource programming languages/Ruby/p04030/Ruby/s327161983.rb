# frozen_string_literal: true

commands = gets.chomp!.split('')

ans = []
commands.each do |e|
  if e == 'B'
    ans.pop
  else
    ans << e
  end
end

puts ans.join
