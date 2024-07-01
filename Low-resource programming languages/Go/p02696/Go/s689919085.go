package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	var i int
	if sc.Scan() {
		if num, err := strconv.Atoi(sc.Text()); err == nil {
			i = num
		}
	}
	return i
}

func floorFunction(a int, b int, x int) int {
	floorA := (a * x) / b
	floorB := (x / b) * x
	return floorA - floorB
}

func main() {
	sc.Split(bufio.ScanWords)
	var max int
	a, b, n := nextInt(), nextInt(), nextInt()

	if n < b {
		// A*floor(x/B) < 1
		max = floorFunction(a, b, n)
	} else if b <= n {
		// 1 <= A*floor(x/B)
		for x := 0; x <= n; x++ {
			v := floorFunction(a, b, x)
			if max <= v {
				max = v
			}
		}
	}
	fmt.Println(max)
}
