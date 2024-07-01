package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func round(f float64) int {
	return int(math.Floor(f + 0.5))
}

func main() {
	n, _ := strconv.Atoi(nextLine())

	row := nextLine()
	as := make([]int, n)
	array := strings.Split(row, " ")
	for i := 0; i < n; i++ {
		as[i], _ = strconv.Atoi(array[i])
	}

	var sum, avg int
	for _, a := range as {
		sum += a
	}
	avg = round(float64(sum) / float64(n))

	minCost := 0
	for _, a := range as {
		minCost += (a - avg) * (a - avg)
	}

	fmt.Println(minCost)
}
