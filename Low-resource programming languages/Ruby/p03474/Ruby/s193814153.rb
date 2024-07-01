# frozen_string_literal: true

a, b = gets.split(' ').map(&:to_i)
if gets =~ /[0-9]{#{a}}-[0-9]{#{b}}/
  puts 'Yes'
else
  puts 'No'
end
