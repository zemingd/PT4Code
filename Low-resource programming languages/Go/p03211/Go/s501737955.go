package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}

func getFloat() float64 {
	sc.Scan()
	n, _ := strconv.ParseFloat(sc.Text(), 64)
	return n
}

func sum(n []int) int {
	a := 0
	for _, v := range n {
		a += v
	}
	return a
}

func partseFloat(s string) (n float64) {
	n, _ = strconv.ParseFloat(s, 64)
	return
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Scan()
	s := sc.Text()

	Rune := []rune(s)
	n := len(Rune)
	var min float64
	min = 753
	for i := 0; i < n-2; i++ {
		if math.Abs(753-partseFloat(s[i:i+3])) < min {
			min = math.Abs(753 - partseFloat(s[i:i+3]))
		}
	}
	fmt.Println(min)
}
