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

	min := 1001
	for i := 0; i <= n; i++ {
		sc.Scan()
		c, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		tt, _ := strconv.Atoi(sc.Text())

		if tt <= t && c < min {
			min = c
		}
	}

	if min == 1001 {
		fmt.Println("TLE")
	} else {
		fmt.Println(min)
	}
}
