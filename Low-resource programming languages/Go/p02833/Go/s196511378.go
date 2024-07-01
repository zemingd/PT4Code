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
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func Pow(x int, y int) int {
	return int(math.Pow(float64(x), float64(y)))
}

func main() {
	n := nextInt()
	if n % 2 == 1 {
		fmt.Printf("0")
		return
	}

	count := 0
	str := strconv.Itoa(n)
	for i := len(str) - 1; i >= 1; i-- {
		d := n / Pow(10, i)
		count += d * i
	}

	fmt.Printf("%d", count)
}
