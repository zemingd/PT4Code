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

	for i := 0; i < n; i++ {
		x[i], y[i], h[i] = nextInt(), nextInt(), nextInt()
	}

	for cx := 0; cx <= 100; cx++ {
		for cy := 0; cy <= 100; cy++ {
			can := true
			hh := 1
			prevh := 0
			for i := 1; i < n; i++ {
				// if h[i] == 0 {
				// 	continue
				// }

				// if h[i-1] == 0 {
				// 	continue
				// }

				hh = abs(x[i]-cx) + abs(y[i]-cy) + h[i]

				prevh = abs(x[i-1]-cx) + abs(y[i-1]-cy) + h[i-1]

				if hh == prevh && max(hh-abs(x[i]-cx)-abs(y[i]-cy), 0) == h[i] {
					continue
				} else {
					can = false
					break
				}
			}
			// fmt.Printf("%d %d %d\n", cx, cy, hh)

			if can {
				fmt.Printf("%d %d %d\n", cx, cy, hh)
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
