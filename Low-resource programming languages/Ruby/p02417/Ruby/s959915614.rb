w = $<.read.downcase
puts (?a..?z).map { |e| "#{e} : #{w.count(e)}" }