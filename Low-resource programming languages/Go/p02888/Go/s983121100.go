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
func createTriangles(rods []int) (total int) {
	n := len(rods)
	for a := 0; a < n; a++ {
		for b := a + 1; b < n; b++ {
			for c := b + 1; c < n; c++ {
				rodsA := rods[a]
				rodsB := rods[b]
				rodsC := rods[c]
				if rodsA < rodsB+rodsC && rodsB < rodsC+rodsA && rodsC < rodsA+rodsB {
					total++
				}
			}
		}
	}
	return
}
func main() {
	n := nextInt()
	rods := nextInts(n)
	fmt.Println(createTriangles(rods))
}
