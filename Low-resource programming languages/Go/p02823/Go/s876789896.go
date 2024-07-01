package main

import "fmt"

func main() {
	var N, A, B int
	fmt.Scan(&N, &A, &B)
	var ans int
	if (B-A)%2 == 0 {
		ans = (B - A) / 2
	} else {
		// 答えは以下の(A)+(B)+(C)になる
		// (A) 片方が1卓あるいはN卓に移動するまでに必要なラウンド - min(A-1, N-B)
		// (B) 偶奇を調整するラウンド - 1ラウンド
        // (C) 双方が出会うためのラウンド - 最初は同じ方向に進むので、距離が縮まらない。偶奇調整後は近くが、調整ラウンド1分だけ距離が縮まっているので、必要なラウンド数は(B-A-1)/2となる
		ans = min(A-1, N-B) + 1 + (B-A-1)/2
	}
	fmt.Println(ans)
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
