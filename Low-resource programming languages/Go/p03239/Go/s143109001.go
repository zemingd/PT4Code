package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

const inf = 1 << 60

func ri() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func main() {
	sc.Split(bufio.ScanWords)
	n, t := ri(), ri()
	minCost := inf
	for i := 0; i < n; i++ {
		cost, tt := ri(), ri()
		if tt > t {
			continue
		}
		if cost > minCost {
			continue
		}
		minCost = cost
	}
	if minCost > 1000 {
		fmt.Println("TLE")
	} else {
		fmt.Println(minCost)
	}
}
