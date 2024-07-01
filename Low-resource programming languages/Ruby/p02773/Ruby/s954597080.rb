page_count = gets.to_i
text_list = page_count.times.map { gets }


text_list = text_list.group_by(&:itself)
max_count = text_list.max { |x,y| x[1].count <=> y[1].count}[1].count

most_duplicated_text_list = text_list.each_with_object([]) do |hash, result|
  result << hash[0] if hash[1].count == max_count
end

puts most_duplicated_text_list.sort


#def duplicate_text_hash(text, count)
#  {
#    text: text,
#    count: count
#  }
#end

#duplicate_text_list = page_count.times.inject([]) do |list, _|
#  text = gets
#  same_text_hash = list.find { |hash| hash[:text] == text }
#  if same_text_hash.nil?
#    list.append(duplicate_text_hash(text, 1))
#  else
#    list.delete(same_text_hash)
#    same_text_hash[:count] = same_text_hash[:count] + 1
#    list.append(same_text_hash)
#  end
#end
#
#duplicate_text_list.max { |x,y| x[: }