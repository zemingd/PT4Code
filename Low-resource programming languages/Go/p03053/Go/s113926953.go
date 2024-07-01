package main

import (
	"bufio"
	"fmt"
	"os"
)

type point struct {
	h, w int
}

var sc = bufio.NewScanner(os.Stdin)

const inf = 1 << 60

func ri() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func rs() string {
	sc.Scan()
	return sc.Text()
}

func smaller(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	sc.Split(bufio.ScanWords)
	H, W := ri(), ri()

	directions := []point{point{h: 1, w: 0}, point{h: -1, w: 0}, point{h: 0, w: 1}, point{h: 0, w: -1}}

	que := make([]point, 0, H*W)

	dp := make([][]int, H) // board
	for i := 0; i < H; i++ {
		a := rs()
		row := make([]int, W)
		for j, aa := range a {
			if aa == '#' {
				row[j] = 0
				que = append(que, point{h: i, w: j})
			} else {
				row[j] = inf
			}
		}
		dp[i] = row
	}

	var curr point
	for len(que) != 0 {
		curr, que = que[0], que[1:]

		for _, d := range directions {
			expl := point{h: curr.h + d.h, w: curr.w + d.w}

			if expl.h < 0 || expl.w < 0 || expl.h >= H || expl.w >= W {
				continue
			}

			if dp[curr.h][curr.w]+1 < dp[expl.h][expl.w] {
				dp[expl.h][expl.w] = dp[curr.h][curr.w] + 1
				que = append(que, point{h: expl.h, w: expl.w})
			}
		}
	}

	maxCost := 0
	for _, row := range dp {
		for _, cost := range row {
			if cost > maxCost {
				maxCost = cost
			}
		}
	}
	fmt.Println(maxCost)
}
