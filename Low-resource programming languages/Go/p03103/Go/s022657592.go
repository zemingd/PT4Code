package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextFloat() float64 {
	sc.Scan()
	f, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func readInts(n int) []int {
	result := make([]int, n)
	for i := 0; i < n; i++ {
		result[i] = nextInt()
	}
	return result
}

var COST, M int

func main() {
	N := nextInt()
	M = nextInt()
	SS := make([][2]int, N)
	for i := 0; i < N; i++ {
		p := nextInt()
		num := nextInt()
		SS[i] = [2]int{p, num}
	}
	sort.Slice(SS, func(i, j int) bool { return SS[i][0] < SS[j][0] })
	for i := 0; i < N; i++ {
		buy(SS[i])
		if M == 0 {
			fmt.Println(COST)
			return
		}
	}
}

func buy(shop [2]int) {
	if M <= shop[1] {
		COST += M * shop[0]
		M = 0
	} else {
		COST += shop[0] * shop[1]
		M -= shop[1]
	}
}
