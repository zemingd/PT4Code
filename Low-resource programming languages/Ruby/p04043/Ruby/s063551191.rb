puts Array.new($stdin.gets.split(' ').map(&:to_i)[0]).map{|v|$stdin.gets.chomp}.sort.join