package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	x := make([]int, n)
	for i := 0; i < n; i++ {
		x[i] = nextInt()
	}
	var result int
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			result += x[i] ^ x[j]
			result %= (int(math.Pow(10, 9)) + 7)
		}
	}
	fmt.Printf("%d", result)
}
