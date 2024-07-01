package main

import (
	"fmt"
	"strings"
)

func main() {
	var T string
	fmt.Scan(&T)
	n := strings.Count(T, "?")
	cnt := 0
	ans := T
	// bitsがn個の要素の各パターンを表す
	for bits := 0; bits < (1 << uint64(n)); bits++ {
		S := T
		// bitsの各要素についてのループ
		for i := 0; i < n; i++ {
			// bitsのi個目の要素の状態がonかどうかチェック
			if (bits>>uint64(i))&1 == 1 {
				S = strings.Replace(S, "?", "P", 1)
			} else {
				S = strings.Replace(S, "?", "D", 1)
			}
		}
		d := strings.Count(S, "D")
		pd := strings.Count(S, "PD")
		tmp := d + pd
		if cnt <= tmp {
			ans = S
			cnt = tmp
		}
	}
	fmt.Println(ans)
}
