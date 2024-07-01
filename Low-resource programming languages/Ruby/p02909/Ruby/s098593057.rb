def tommorow_weather(input)
  case input
  when 'Sunny'
    'Cloudy'
  when 'Cloudy'
    'Rainy'
  when 'Rainy'
    'Sunny'
  end
end

puts tommorow_weather gets.to_s