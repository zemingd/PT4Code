package main

import (
	"bufio"
	"os"
	"strconv"
	"math"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	if !sc.Scan() {
		panic("failed scan string")
	}
	return sc.Text()
}

func nextInt() int {
	if !sc.Scan() {
		panic("failed scan int")
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	s := nextString()

	min := math.MaxInt32

	for i := 0; i < len(s)-2; i++ {
		n, _ := strconv.Atoi(s[i : i+3])
		a := abs(753 - n)
		if a < min {
			min = a
		}
	}
	fmt.Println(min)
}

func abs(n int) int {
	if n < 0 {
		n = -n
	}
	return n
}
