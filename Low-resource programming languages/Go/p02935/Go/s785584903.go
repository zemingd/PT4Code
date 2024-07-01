package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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
func sortInc(ar []int) []int {
	sort.Ints(ar)
	return ar
}

func mix(ingredients []int) float64 {
	ingredients = sortInc(ingredients)
	il := float64(ingredients[0])
	for _, ir := range ingredients {
		il = (il + float64(ir)) / 2.0
	}
	return il
}
func main() {
	n := nextInt()
	ingredients := nextInts(n)
	fmt.Println(mix(ingredients))
}
