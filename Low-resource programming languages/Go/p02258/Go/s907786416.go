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

func maxProfit(r []int) int {
	ans := math.MinInt32
	for i := 0; i < len(r); i++ {
		for j := i + 1; j < len(r); j++ {
			diff := r[j] - r[i]
			if diff > ans {
				ans = diff
			}
		}
	}
	return ans
}

func main() {
	//sc.Split(bufio.ScanWords)
	n := nextInt()
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	fmt.Println(maxProfit(r))

}

