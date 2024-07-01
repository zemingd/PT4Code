class Array
  def count_by(&block)
    return to_enum(:count_by) unless block_given?

    each_with_object(Hash.new(0)) do|elm, h|
      h[yield(elm)] += 1
    end
  end
end

class Solver

  def initialize
    str = gets.chomp.downcase

    str.gsub!("\n",'')
    str.gsub!(' ','')

    res = Hash.new(0)

    res.merge!(str.chars.count_by{|e| e})

    ('a'..'z').each do |ch|
      puts "#{ch} : #{res[ch]}"
    end
  end
end

Solver.new