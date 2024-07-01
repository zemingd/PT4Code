package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	a, _ := strconv.Atoi(sc.Text())

	ans := 0
	min := 99999999999999999
	for i := 1; i <= n; i++ {
		sc.Scan()
		h, _ := strconv.Atoi(sc.Text())

		if d := abs(100*a - (100*t - 6*h)); d < min {
			min = d
			ans = i
		}
	}
	fmt.Println(ans)
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
