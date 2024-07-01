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
	dp := make(map[int]map[int]*HW, H*W)

	l := make([]*HW, 0, H*W)

	for h := 0; h < H; h++ {
		dp[h] = make(map[int]*HW)
		for w := 0; w < W; w++ {
			c, _ := r.ReadByte()
			if c == '.' {
				dp[h][w] = new(HW)
				if hw, ok := dp[h-1][w]; ok {
					dp[h][w].H += hw.H
				}
				if hw, ok := dp[h][w-1]; ok {
					dp[h][w].W += hw.W
				}
				dp[h][w].H++
				dp[h][w].W++
				for i := h - 1; i >= 0; i-- {
					if hw, ok := dp[i][w]; ok {
						hw.H++
					} else {
						break
					}
				}
				for i := w - 1; i >= 0; i-- {
					if hw, ok := dp[h][i]; ok {
						hw.W++
					} else {
						break
					}
				}
				l = append(l, dp[h][w])

			}
		}
		r.ReadByte()
	}

	max := 0
	for _, hw := range l {
		cnt := hw.W + hw.H - 1
		if max < cnt {
			max = cnt
		}
	}
	return max
}

func main() {
	ans := solve()
	fmt.Println(ans)
}
