puts gets.split('').group_by(&:itself).any?{|k,v|v.size>2} ? 'Yes' : 'No'
