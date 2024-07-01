class String
  def to_sorted_array
    self.each_char.sort
  end
end

def comparea_arr(arr1, arr2)
  arr1Size = arr1.size
  arr2Size = arr2.size

  arr1.each_with_index do |s, i|
    if i == arr2Size
      return 'No'
    end
  
    if s < arr2[i]
      return 'Yes'
    elsif s > arr2[i]
      return 'No'
    end
  end

  # eachループを抜けたということは、arr2はarr1の全ての文字+数文字。またはまったく同じ
  # つまり まったく同じでなければarr1 < arr2が成り立つ
  return arr1Size == arr2Size ? 'No' : 'Yes'
end

arr1 = gets.chomp.to_sorted_array
arr2 = gets.chomp.to_sorted_array.reverse

puts comparea_arr(arr1, arr2)