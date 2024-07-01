package main

import (
	"fmt"
	"strings"
)

// hassuffixを使う

var texts = []string{"dream", "dreamer", "erase", "eraser"}

func main() {
	var s string
	fmt.Scan(&s)
	ans := false
	for {
		// sがtextを末尾に持つかどうか
		have := false
		for _, t := range texts {
			// もっていたらそれを消す
			if strings.HasSuffix(s, t) {
				s = s[:len(s)-len(t)]
				have = true
				break
			}
		}
		if have {
			continue
		} else if len(s) == 0 {
			ans = true
			break
		} else {
			break
		}
	}
	if ans {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
