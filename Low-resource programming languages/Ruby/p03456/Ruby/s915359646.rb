S = gets.strip.sub(/\s/, '').to_i

puts (Math.sqrt(S).to_i)**2 == S ? 'Yes' : 'No'