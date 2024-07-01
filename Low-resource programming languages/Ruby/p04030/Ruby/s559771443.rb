puts gets.chomp.chars.inject(""){|s, c| c =~ /\d/ ? s + c : s[0 ... -1]}
