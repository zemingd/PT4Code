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
	n := nextInt()
	k := nextInt()

	//すぬけ君1～Nがお菓子を持っていたら"1"、持っていなかったら"-1"とする
	sunuke := make(map[int]int)
	for i := 0; i < n; i++ {
		sunuke[i+1] = -1
	}

	var d, snack, count int
	count = n
	for i := 0; i < k; i++ {
		//K番目のお菓子を持っているすぬけ君の人数
		d = nextInt()
		for j := 0; j < d; j++ {
			//お菓子を持っているすぬけ君の番号
			snack = nextInt()
			for k := 0; k < n; k++ {
				if sunuke[snack] == -1 {
					sunuke[snack] *= -1
					count--
				}
			}
		}
	}
	fmt.Println(count)
}
