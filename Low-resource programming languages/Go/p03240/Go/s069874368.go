package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	x := make([]int, n)
	y := make([]int, n)
	h := make([]int, n)

	xt := 0
	yt := 0
	ht := 0

	for i := 0; i < n; i++ {
		x[i], y[i], h[i] = nextInt(), nextInt(), nextInt()
		if h[i] > 0 {
			xt, yt, ht = x[i], y[i], h[i]
		}
	}

	for cx := 0; cx <= 100; cx++ {
		for cy := 0; cy <= 100; cy++ {
			Ht := ht + abs(xt-cx) + abs(yt-cy)
			cnt := 0

			for i := 0; i < n; i++ {
				if h[i] == max(0, Ht-abs(cx-x[i])-abs(cy-y[i])) {
					cnt++
				}
				// if h[i-1] == 0 {
				// 	continue
				// }

				// hh = abs(x[i]-cx) + abs(y[i]-cy) + h[i]

				// prevh = abs(x[i-1]-cx) + abs(y[i-1]-cy) + h[i-1]

				// if hh == prevh && max(hh-abs(x[i]-cx)-abs(y[i]-cy), 0) == h[i] {
				// 	continue
				// } else {
				// 	can = false
				// 	break
				// }
			}
			// fmt.Printf("%d %d %d\n", cx, cy, hh)

			// if can {
			// 	fmt.Printf("%d %d %d\n", cx, cy, hh)
			// 	return
			// }
			if cnt == n {
				fmt.Printf("%d %d %d\n", cx, cy, Ht)
				return
			}
		}
	}

}

func abs(a int) int {
	if a < 0 {
		return -1 * a
	}
	return a
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}
