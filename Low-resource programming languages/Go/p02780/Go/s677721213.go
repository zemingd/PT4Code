package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextInts(n int) []int {
	ints := make([]int, n)
	for i := 0; i < n; i++ {
		ints[i] = nextInt()
	}
	return ints
}
func calcEV(max int) float64 {
	total := (1 + max) * max / 2
	return float64(total) / float64(max)
}

func calcTotalEV(k int, dices []int) float64 {
	l := len(dices)

	total := 0

	start := 0
	end := start + k
	ds := dices[start:end]
	for _, d := range ds {
		total += d
	}
	max := total

	for end < l {
		s := dices[start]
		next := dices[end]
		total = total - s + next
		if max < total {
			max = total
		}
		start++
		end++
	}

	return float64(max+k) / 2.0
}

func main() {
	n, k := nextInt(), nextInt()
	dices := nextInts(n)
	t := calcTotalEV(k, dices)
	fmt.Println(t)
}
