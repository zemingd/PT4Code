package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, math.MaxInt64)
}

func readInt() int {
	sc.Scan()
	r, _ := strconv.Atoi(sc.Text())
	return r
}

func pow(n, d int) int {
	ans := 1
	for i := 0; i < d; i++ {
		ans *= 100
	}
	return ans
}

func main() {
	d, n := readInt(), readInt()
	fmt.Println(int(pow(100, d) * n))
}
