package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	n, x, y := nextInt(), nextInt(), nextInt()
	x--
	y--

	ans := make([]int, n)

	for i := 0; i < n; i++ {
		for j := (i + 1); j < n; j++ {

			distance := j - i
			if !((i >= y) || (j <= x)) {
				shortcut := abs(x-i) + abs(y-j) + 1
				if shortcut < distance {
					distance = shortcut
				}
			}

			ans[distance]++
		}
	}

	for i := 1; i < n; i++ {
		fmt.Println(ans[i])
	}
}

func abs(n int) int {
	return int(math.Abs(float64(n)))
}

func nextInt() int {
	i, _ := strconv.Atoi(nextText())
	return i
}

func nextText() string {
	sc.Scan()
	return sc.Text()
}
