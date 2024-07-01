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

	nRoutes := scanInt(sc)
	maxTime := scanInt(sc)
	minCost := 9999

	for i := 0; i < nRoutes; i++ {
		cost := scanInt(sc)
		time := scanInt(sc)
		if time <= maxTime && cost < minCost {
			minCost = cost
		}
	}

	if minCost == 9999 {
		fmt.Println("TLE")
	} else {
		fmt.Println(minCost)
	}
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}