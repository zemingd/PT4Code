ws = $stdin.read.downcase
(?a..?z).each { |e| puts "#{e} : #{ws.count(e)}" }