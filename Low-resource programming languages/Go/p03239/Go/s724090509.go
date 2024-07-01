package main

import (
	"bufio"
	"fmt"
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

	min := 1001
	for k, v := range m {
		if k <= t && v < min {
			min = v
		}
	}

	if min == 1001 {
		fmt.Println("TLE")
	} else {
		fmt.Println(min)
	}
}
