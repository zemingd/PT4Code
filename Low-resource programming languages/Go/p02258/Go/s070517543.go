package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

const maxn = 200000
const maxr = 1000000000

func main() {
	sc := bufio.NewScanner(os.Stdin)
	n := stdin(sc)
	if n < 2 || maxn < n {
		panic("n is invalid")
	}
	ary := make([]int, n)
	for i := 0; i < n; i++ {
		v := stdin(sc)
		if v < 1 || maxr < v {
			panic("v is invalid")
		}
		ary[i] = v
	}
	max := -math.MaxFloat64
	for i, ri := range ary {
		for j, rj := range ary {
			if i < j {
				max = math.Max(max, float64(rj-ri))
			}
		}
	}
	fmt.Println(int(max))
}

func stdin(sc *bufio.Scanner) int {
	var n int
	if sc.Scan() {
		num, err := strconv.Atoi(sc.Text())
		if err != nil {
			panic(err)
		}
		n = num
	}
	return n
}

