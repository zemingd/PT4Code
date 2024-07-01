// https://atcoder.jp/contests/abc049/tasks/arc065_a

// 探索文字の内、どれかが別の部分文字列になっているようなケースをprefixという。
// こういう場合の探索は一筋縄では行かない。

// この問題の場合、文字列を逆順にするとprefixになる組み合わせがなくなるので、
// 単純なループ探索で解けるようになる。

package main

import (
	"fmt"
	"strings"
)

func reverse(s string) string {
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}

func main() {
	var s string

	fmt.Scan(&s)

	s = reverse(s)

	ds := [4]string{reverse("dream"),
		reverse("dreamer"),
		reverse("erase"),
		reverse("eraser"),
	}

	for len(s) > 0 {
		trimmed := false
		for _, d := range ds {
			if strings.HasPrefix(s, d) {
				s = s[len(d):]
				trimmed = true
				break
			}
		}
		if !trimmed {
			fmt.Println("NO")
			return
		}
	}
	if len(s) == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
