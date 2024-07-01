// SeeAlso: https://atcoder.jp/contests/abc149/submissions/9220255
package main

import (
	"fmt"
)

// r: グー
// s: チョキ
// p: パー
func solution(n, k, r, s, p int, t string) int {
	var ans int

	point := map[rune]int{
		'r': p,
		's': r,
		'p': s,
	}

	check := make(map[int]bool, len(t))

	for i, v := range t {
		if i < k {
			ans += point[v] // 前回の手を考慮しなくていい場合は勝ち手を出すので最大点数を獲得
		} else {
			// 前回の手と同じ場合
			if t[i] == t[i-k] {
				// 前回の手に次回を考慮したフラグが立っているか確認。
				// フラグが立っている場合は前回考慮済なので、今回は勝ち手を出して最大点数を獲得
				if check[i-k] {
					ans += point[v]
				} else {
					// 前回の手に次回考慮フラグが立っていないので今回は点数獲得なしでフラグを立てる
					check[i] = true
				}
			} else {
				// 前回の手を考慮しなくていいので勝ち手を出して最大点数を獲得
				ans += point[v]
			}
		}
	}
	return ans
}

func main() {
	var n, k, r, s, p int
	var t string
	fmt.Scan(&n, &k)
	fmt.Scan(&r, &s, &p)
	fmt.Scan(&t)
	fmt.Println(solution(n, k, r, s, p, t))
}
