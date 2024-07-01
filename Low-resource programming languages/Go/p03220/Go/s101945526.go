package main

import (
	"bufio"
	"fmt"
	"math"
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
	min := 99999999.0
	for i := 1; i <= n; i++ {
		sc.Scan()
		h, _ := strconv.Atoi(sc.Text())

		if d := math.Abs(float64(a-t) + 0.006*float64(h)); d < min {
			min = d
			ans = i
		}
	}
	fmt.Println(ans)
}
