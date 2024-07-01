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

	N, K := nextInt(), nextInt()

	ans := 0.0
	for i := 1; i <= N; i++ {
		tmp := 1.0
		nn := i

		for nn < K {
			nn *= 2
			tmp /= 2.0
		}
		ans += tmp

	}

	ans /= float64(N)

	fmt.Printf("%.19f\n", ans)
}
