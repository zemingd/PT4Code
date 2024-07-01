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

	m := make(map[int]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		c, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		tt, _ := strconv.Atoi(sc.Text())
		m[tt] = c
	}

	min := int(math.MaxInt64)
	for k, v := range m {
		if k <= t && v < min {
			min = v
		}
	}

	if min == int(math.MaxInt64) {
		fmt.Println("TLE")
	} else {
		fmt.Println(min)
	}
}
