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
	min := 99999999999999999.0
	for i := 1; i <= n; i++ {
		sc.Scan()
		h, _ := strconv.Atoi(sc.Text())

		if d := abs(float64(a) - (float64(t) - 0.006*float64(h))); d < min {
			min = d
			ans = i
		}
	}
	fmt.Println(ans)
}

func abs(x float64) float64 {
	if x < 0 {
		return -x
	}
	return x
}
