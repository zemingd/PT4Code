class Abc073a
  def self.include9(num)
    num.split('').each do |i|
      if i == "9"
        return "Yes"
      end
    end
    return "No"
  end
end
print Abc073a.include9(gets.chomp)
