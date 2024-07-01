package main

import (
	"fmt"
)

// +=での文字列連結はパフォーマンス的にあまりよろしくないらしい
// https://qiita.com/ruiu/items/2bb83b29baeae2433a79
// https://qiita.com/ono_matope/items/d5e70d8a9ff2b54d5c37
func main() {
	var S, t, l string
	var Q, cnt int
	fmt.Scan(&S, &Q)
	for i := 0; i < Q; i++ {
		var T int
		fmt.Scan(&T)
		switch T {
		case 1:
			cnt++
		case 2:
			var F int
			var C string
			fmt.Scan(&F, &C)
			if cnt%2 == 1 {
				switch F {
				case 1:
					l = l + C
				case 2:
					t = C + t
				}
			} else {
				switch F {
				case 1:
					t = C + t
				case 2:
					l = l + C
				}
			}
		}
	}
	if cnt%2 == 1 {
		fmt.Println(Reverse(l) + Reverse(S) + Reverse(t))
	} else {
		fmt.Println(t + S + l)
	}
}

func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}
