package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

const (
	initialBufSize = 10000
	maxBufSize     = 1000000
)

var (
	sc *bufio.Scanner = func() *bufio.Scanner {
		sc := bufio.NewScanner(os.Stdin)
		buf := make([]byte, initialBufSize)
		sc.Buffer(buf, maxBufSize)
		sc.Split(bufio.ScanWords)
		return sc
	}()
	mod int = 1e9 + 7
)

func main() {
	N := getInt()

	table := make([][]int, N)
	for i := 0; i < N; i++ {
		table[i] = make([]int, N)
	}

	for i := 0; i < N; i++ {
		A := getInt()
		for j := 0; j < A; j++ {
			x := getInt()
			y := getInt()

			table[i][x - 1] = y
		}
	}

	//for _, row := range table {
	//	fmt.Println(row)
	//}

	members := make([]int, N)
	for i := 0; i < N-1; i++ {
		for j := i+1; j < N; j++ {
			if table[i][j] == table[j][i] {
				if table[i][j] == 1 {
					members[i] = 1
					members[j] = 1
				} else {
					members[i] = 1
				}
			}
		}
	}

	result := 0
	for _, flag := range members {
		if flag == 1 {
			result++
		}
	}

	fmt.Println(result)
}

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func pow(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
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

func strSearch(a []string, b string) bool {
	for i := 0; i < len(a); i++ {
		if a[i] == b {
			return true
		}
	}
	return false
}

func printIntArray(array []int) {
	strArray := fmt.Sprint(array)
	fmt.Println(strArray[1 : len(strArray) - 1])
}

func calcMod(x int) int {
	return x % mod
}
