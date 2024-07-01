package main

import (
	"os"
	"fmt"
	"bufio"
	"strings"
	"strconv"
)

func main() {
	var sc   = bufio.NewScanner(os.Stdin)
	sc.Scan()
	var N, _ = strconv.Atoi(sc.Text())
	sc.Scan()
	var A    = strings.Split(sc.Text(), " ")

	for i := 0; i < N; i++ {
		var cost    = 0
		var current = 0
		for j := 0; j < N; j++ {
			if i == j {
				continue
			} else {
				var position, _ = strconv.Atoi(A[j])
				cost += abs(current - position)
				current = position
			}
		}
		cost += abs(0 - current)
		fmt.Println(cost)
	}
}

func abs(n int) int {
	if (n < 0) {
		return n * -1
	} else {
		return n
	}
}