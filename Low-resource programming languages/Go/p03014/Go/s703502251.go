package main

import (
	"bufio"
	"fmt"
	"os"
)

type HW struct {
	H int
	W int
}

func solve() int {
	var H, W int
	fmt.Scan(&H, &W)

	r := bufio.NewReader(os.Stdin)
	dp := make([][]HW, H)
	for h := 0; h < H; h++ {
		dp[h] = make([]HW, W)
		for w := 0; w < W; w++ {
			c, _ := r.ReadByte()
			if c == '.' {
				if h > 0 {
					dp[h][w].H += dp[h-1][w].H

				}
				if w > 0 {
					dp[h][w].W += dp[h][w-1].W
				}
				dp[h][w].H++
				dp[h][w].W++
				for i := h - 1; i >= 0; i-- {
					if dp[i][w].H == 0 {
						break
					}
					dp[i][w].H++
				}
				for i := w - 1; i >= 0; i-- {
					if dp[h][i].W == 0 {
						break
					}
					dp[h][i].W++
				}
			}
		}
		r.ReadByte()
	}

	max := 0
	for h := 0; h < H; h++ {
		for w := 0; w < W; w++ {
			cnt := dp[h][w].W + dp[h][w].H - 1
			if max < cnt {
				max = cnt
			}
		}
	}
	return max
}

func main() {
	ans := solve()
	fmt.Println(ans)
}
