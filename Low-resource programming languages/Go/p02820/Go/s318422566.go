package main

import (
	"fmt"
)

func main() {
	var n, k, r, s, p, result int
	var t string
	fmt.Scanf("%d %d", &n, &k)
	fmt.Scanf("%d %d %d",&r, &s, &p)
	fmt.Scanf("%s", &t)

	// 各出し手に対する勝ち点
	score := map[rune]int {
		's': r,
		'p': s,
		'r': p,
	}

	// 勝利した場合のフラグ
	winFlg := make(map[int]bool, len(t))

	for i, ru := range t[:n] {
		// k回目までは必ず勝つ
		if i < k {
			result += score[ru]
			winFlg[i] = true
		} else {
			// 以下のいずれかに当てはまる場合勝つ
			// 前回同じ手でない
			// 前回負けている
			if t[i] != t[i - k] || winFlg[i - k] == false {
				result += score[ru]
				winFlg[i] = true
			}
		}
	}

	fmt.Printf("%d", result)
}