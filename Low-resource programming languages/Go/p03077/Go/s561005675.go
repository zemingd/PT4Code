package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"math"
)

const (
	initialBufSize = 10000
	maxBufSize     = 100000 + 1024
)

func main() {

	scanner := bufio.NewScanner(os.Stdin)
	buf := make([]byte, initialBufSize)
	scanner.Buffer(buf, maxBufSize)

	scanner.Scan()
	n, _ := strconv.ParseInt(scanner.Text(), 10, 64)
	scanner.Scan()
	a, _ := strconv.ParseInt(scanner.Text(), 10, 64)
	scanner.Scan()
	b, _ := strconv.ParseInt(scanner.Text(), 10, 64)
	scanner.Scan()
	c, _ := strconv.ParseInt(scanner.Text(), 10, 64)
	scanner.Scan()
	d, _ := strconv.ParseInt(scanner.Text(), 10, 64)
	scanner.Scan()
	e, _ := strconv.ParseInt(scanner.Text(), 10, 64)

	nums := []int64{a, b, c, d, e}
	m := min(nums...)
	fmt.Println(int64(n/m) + 1 + 4)

}

func min(nums ...int64) int64 {
	ret := int64(math.MaxInt64)
	for _, n := range nums {
		if n < ret {
			ret = n
		}
	}
	return ret
}
