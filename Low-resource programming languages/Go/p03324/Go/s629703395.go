package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	r, _ := strconv.Atoi(nextLine())
	return r
}

func main() {
	sc.Split(bufio.ScanWords)
	d, n := nextInt(), nextInt()
	fmt.Println(int(math.Pow(100, float64(d))) * n)
}
