package main

import (
	"bufio"
	"fmt"
	"math"
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

func main() {
	sc.Split(bufio.ScanWords)
	var max int
	a, b, n := nextInt(), nextInt(), nextInt()

	for x := 1; x <= n; x++ {
		v := math.Floor(float64((a*x)/b)) - math.Floor(float64(x/b))*float64(x)
		num := int(v)
		if max <= num {
			max = num
		}
	}
	fmt.Println(max)
}
