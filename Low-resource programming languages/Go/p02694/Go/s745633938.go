package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

const initBufSize, maxBufSize = 10000, 1000000

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextInts(n int) []int {
	res := make([]int, n)
	for i := range res {
		res[i] = nextInt()
	}
	return res
}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func abs(n int) int {
	return int(math.Abs(float64(n)))
}

func pow(r, n int) int {
	return int(math.Pow(float64(r), float64(n)))
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, initBufSize), maxBufSize)
	x := nextInt()
	deposit := 100.0
	count := 0
	for {
		count++
		deposit = math.Floor(deposit * 1.01)
		if int(deposit) >= x {
			break
		}
	}
	fmt.Println(count)
}
