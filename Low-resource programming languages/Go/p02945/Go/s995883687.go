package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	a := readInt()
	b := readInt()

	fmt.Println(solve(a, b))
}

func solve(a, b int) int {
	_, answer := max([]int{a + b, a - b, a * b})
	return answer
}

func max(nums []int) (index, max int) {
	max = math.MinInt64
	for i, n := range nums {
		if n > max {
			index = i
			max = n
		}
	}
	return
}

func read() string {
	sc.Scan()
	return sc.Text()
}

func readInt() int {
	i, e := strconv.Atoi(read())
	if e != nil {
		panic(e)
	}
	return i
}
