package main

import (
	"os"
	"fmt"
	"math"
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
				cost += int(math.Abs(float64(current - position)))
				current = position
			}
		}
		cost += int(math.Abs(float64(0 - current)))
		fmt.Println(cost)
	}
}