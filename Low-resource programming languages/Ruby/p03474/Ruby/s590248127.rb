a,b=gets.split.map(&:to_i);
s=gets.chomp.chars;
r=s.delete_at(a);
puts (r==='-' && s.join.match(/\A[0-9]+\z/)) ?'Yes':'No'