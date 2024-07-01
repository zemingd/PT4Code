package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextWord() string {
	sc.Scan()
	str := sc.Text()
	return str
}

func nextInt() int {
	i, e := strconv.Atoi(nextWord())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	var a []int
	for i := 0; i < n; i++ {
		a = append(a, nextInt())
	}
	ans := solve(a)
	fmt.Println(ans)
}

func solve(a []int) float64 {
	result := 0.0
	sort.Ints(a)
	for i, ai := range a {
		result += float64(ai) * math.Pow(0.5, float64(len(a)-i))
	}
	n := len(a) - 1
	result += float64(a[0]) * math.Pow(0.5, float64(n+1))
	return result
}
