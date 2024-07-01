package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	var k int
	fmt.Scan(&k)
	cnt := 0
	r := 0
	f := iniSeq(s)
	l := finSeq(s)
	//奇数奇数でも偶数になるから場合分け
	//finseqのカウント数は毎回変わらない、最初だけ
	if len(s) != f && s[0] == s[len(s)-1] && f%2 != 0 && (f+l)%2 == 0 {
		for i := 1; i < len(s); i++ {
			if s[i] == s[i-1] && cnt%2 == 0 {
				r++
				cnt++
			} else if s[i] == s[i-1] && cnt%2 != 0 {
				cnt++
			} else {
				cnt = 0
			}
		}
		fmt.Println(r*k + k - 1)
		return
	} else if len(s) == f && f%2 != 0 && k%2 == 0 {
		fmt.Println(f / 2)
		fmt.Println(((f/2)+1)*(k/2) + ((f / 2) * k / 2))
	} else if len(s) == f && f%2 != 0 && k%2 != 0 {
		fmt.Println((f/2)*((k/2)+1) + (((f / 2) + 1) * (k / 2)))
	} else {
		for i := 1; i < len(s); i++ {
			if s[i] == s[i-1] && cnt%2 == 0 {
				r++
				cnt++
			} else if s[i] == s[i-1] && cnt%2 != 0 {
				cnt++
			} else {
				cnt = 0
			}
		}
		fmt.Println(r * k)
		return
	}
}

//文字列の最初の文字がどこまで何文字続くかを返す
func iniSeq(s string) int {
	ini := s[0]
	r := 1
	for i := 1; i < len(s); i++ {
		if s[i] == ini {
			r++
		} else {
			return r
		}
	}
	return r
}

//文字列の最後の文字がどこまで何文字続くかを返す
func finSeq(s string) int {
	fin := s[len(s)-1]
	r := 1
	for i := len(s) - 1; i >= 1; i-- {
		if s[i-1] == fin {
			r++
		} else {
			return r
		}
	}
	return r
}
