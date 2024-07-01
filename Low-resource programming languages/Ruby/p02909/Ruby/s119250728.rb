s = gets.chomp

n = if s == 'Cloudy'
      'Rainy'
    elsif s == 'Rainy'
      'Sunny'
    else
      'Cloudy'
    end
puts n