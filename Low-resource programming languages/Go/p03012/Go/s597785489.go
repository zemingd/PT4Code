package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	var n int
	var sum, sum2, mid float64

	fmt.Scanln(&n)

	Ws := make([]int, n)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	for i := range Ws {
		sc.Scan()
		Ws[i], _ = strconv.Atoi(sc.Text())
		sum += float64(Ws[i])
	}

	mid = sum / 2

	for i := range Ws {
		sum2 += float64(Ws[i])
		if sum2 >= mid {
			break
		}
	}

	fmt.Println(math.Abs(sum - sum2*2))
}
