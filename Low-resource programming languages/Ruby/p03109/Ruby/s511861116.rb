# frozen_string_literal: true

s = gets

s.match(%r{\d\d\d\d/(\d\d)/(\d\d)}) do |match|
  m = match[1].to_i

  if m < 5
    puts 'Heisei'
  else
    puts 'TBD'
  end
end
