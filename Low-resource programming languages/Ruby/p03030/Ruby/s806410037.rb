gets
p *$<.each.map{|l|l.split<<$.-1}.sort_by{|s,p|[s,-p.hex]}.map(&:last)