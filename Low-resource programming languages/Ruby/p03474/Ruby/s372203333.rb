puts /\d{#{gets.to_i}}-\d{#{gets.to_i}}/ =~ gets.chomp ? 'Yes' : 'No'