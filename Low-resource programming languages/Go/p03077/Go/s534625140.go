package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func readLine(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func min(ints ...int) int {
	res := math.MaxInt32
	for _, i := range ints {
		if i <= res {
			res = i
		}
	}
	return res
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	n, _ := strconv.Atoi(readLine(sc))
	a, _ := strconv.Atoi(readLine(sc))
	b, _ := strconv.Atoi(readLine(sc))
	c, _ := strconv.Atoi(readLine(sc))
	d, _ := strconv.Atoi(readLine(sc))
	e, _ := strconv.Atoi(readLine(sc))

	fmt.Println(int(4 + math.Ceil(float64(n)/float64(min(a, b, c, d, e)))))
}
