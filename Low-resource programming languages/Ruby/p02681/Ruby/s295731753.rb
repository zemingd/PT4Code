S = ARGF.gets.chomp
T = ARGF.gets.chomp

ans = if /^#{S}[a-z]$/ =~ T
        "Yes"
      else
        "No"
      end

puts ans
