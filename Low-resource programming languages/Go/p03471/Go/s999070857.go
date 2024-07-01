package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() int {
	sc.Scan()
	val, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
	return val
}

func main() {
	sc.Split(bufio.ScanWords)

	N, Y := next(), next()

	x, y, z := 0, 0, 0
	result := false
	for i := 0; i < N+1; i++ {
		for j := 0; j < N+1; j++ {
			k := N - i - j
			if k >= 0 {
				val := 10000*i + 5000*j + (N-i-j)*1000
				if val == Y {
					x = i
					y = j
					z = N - i - j
					result = true
					goto BREAK
				}
			}
		}
	}
	fmt.Println(-1, -1, 1)
BREAK:
	if result {
		fmt.Println(x, y, z)
	}
}