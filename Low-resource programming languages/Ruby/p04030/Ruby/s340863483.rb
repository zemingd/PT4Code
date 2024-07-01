s = gets

while s.include?('B')
  s.gsub!(/(^B|[01]B)/, '')
end

puts s