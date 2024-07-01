ab=gets.split.map(&:to_i)
puts ab.all?(&:odd?) ? "Yes" : "No"