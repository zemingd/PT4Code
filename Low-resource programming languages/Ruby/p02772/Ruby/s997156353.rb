gets
puts gets.split.map(&:to_i).select{|it| it % 2 == 0}.all?{|it| it % 5 == 0 || it % 3 == 0} ? 'APPROVED' : 'DENIED'
