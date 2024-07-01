package main

import (
	"bufio"
	"fmt"
	"math"
	"math/big"
	"os"
	"strconv"
)

var (
	sc = bufio.NewScanner(os.Stdin)
	mod int = 1e9 + 7
)

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	A := uint64(getInt())
	B := uint64(getInt())

	gcm := gcd(A, B)
	results := calc(int(gcm))

	fmt.Println(len(results) + 1)
}

func getInt() int {
	sc.Scan()
	str := sc.Text()
	value, _ := strconv.Atoi(str)
	return value
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

func gcd(m, n uint64) uint64 {
	x := new(big.Int)
	y := new(big.Int)
	z := new(big.Int)
	a := new(big.Int).SetUint64(m)
	b := new(big.Int).SetUint64(n)
	return z.GCD(x, y, a, b).Uint64()
}

func calc(gcm int) []int64 {
	results := make([]int64, 0)
	isNotPrime := make([]bool, gcm+1)
	isNotPrime[0] = true
	isNotPrime[1] = true

	n := 2
	for ; n*n <= gcm; n++ {
		if !isNotPrime[n] {
			if gcm % n == 0 {
				results = append(results, int64(n))
				for m := 2; n*m <= gcm; m++ {
					isNotPrime[n*m] = true
				}
			}
		}
	}
	for ; n <= gcm; n++ {
		if !isNotPrime[n] {
			if gcm % n == 0 {
				results = append(results, int64(n))
			}
		}
	}

	return results
}
