gets.split.map(&:to_i).sort.tap { |a| puts a[0] + a[1] == a[2] ? 'Yes' : 'No' }
