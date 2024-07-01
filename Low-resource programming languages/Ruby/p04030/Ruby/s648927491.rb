puts gets.chomp.chars.reduce(""){|s, c| if c=="B" then s[0...-1] else s+c end}
