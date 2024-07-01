# strip 文字列の先頭と末尾の空白文字を除去
_s = gets.strip
_one, _two, _thr, _four = "dream", "dreamer", "erase", "eraser"

_s.slice!("#{_one}") if _s.include?("#{_one}")
_s.slice!("#{_two}") if _s.include?("#{_two}")
_s.slice!("#{_thr}") if _s.include?("#{_thr}")
_s.slice!("#{_four}") if _s.include?("#{_four}")

if _s==""
	puts "YES"
else
	puts "NO"
end