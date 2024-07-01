package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func abs(f float64) float64 {
	if f < 0 {
		return -f
	}
	return f
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	a, _ := strconv.Atoi(sc.Text())
	maxDiff := 1000000.0
	var ans int
	for i := 0; i < n; i++ {
		sc.Scan()
		h, _ := strconv.Atoi(sc.Text())
		if abs(float64(a)-(float64(t)-float64(h)*0.006)) < maxDiff {
			maxDiff = abs(float64(a) - (float64(t) - float64(h)*0.006))
			ans = i + 1
		}
	}
	fmt.Println(ans)
}