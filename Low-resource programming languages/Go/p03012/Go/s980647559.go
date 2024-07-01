package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	var n, sum, S1, S2 int
	fmt.Scan(&n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	W := make([]int, n)
	for i := range W {
		sc.Scan()
		W[i], _ = strconv.Atoi(sc.Text())

		sum += W[i]
	}

	ans := 10000
	for i := 0; i < n; i++ {
		S1 += W[i]
		S2 = sum - S1

		ans = int(math.Min(float64(ans), math.Abs(float64(S1-S2))))
	}
	fmt.Println(ans)
}
