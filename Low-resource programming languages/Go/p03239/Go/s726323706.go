package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	chunks := strings.Split(sc.Text(), " ")
	n, _ := strconv.Atoi(chunks[0])
	timeout, _ := strconv.Atoi(chunks[1])

	minCost := math.MaxInt64

	for i := 0; i < n; i++ {
		sc.Scan()
		chunks := strings.Split(sc.Text(), " ")
		t, _ := strconv.Atoi(chunks[1])
		if t > timeout {
			continue
		}
		c, _ := strconv.Atoi(chunks[0])
		if c < minCost {
			minCost = c
		}
	}

	if minCost == math.MaxInt64 {
		fmt.Println("TLE")
	} else {
		fmt.Println(minCost)
	}
}
