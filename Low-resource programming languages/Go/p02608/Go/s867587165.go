package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() int {
	sc.Scan()

	val, err := strconv.Atoi(sc.Text())

	if err != nil {
		fmt.Println(err)
	}
	return val
}

func main() {
	N := next()
	ans := make([]int, 10050)

	n := math.Sqrt(float64(10050))

	for x := 1.0; x < n; x++ {
		for y := 1.0; y < n; y++ {
			for z := 1.0; z < n; z++ {
				v := math.Pow(x, 2.0) + math.Pow(y, 2.0) + math.Pow(z, 2.0) + x*y + y*z + x*z
				if v < 10050 {
					ans[int(v)]++
				}
			}
		}
	}

	for i := 1; i < N+1; i++ {
		fmt.Println(ans[i])
	}
}