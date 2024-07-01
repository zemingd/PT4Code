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
	cms := cms(int(gcm))

	var results []int
	for _, cm := range cms {
		if isPrime(cm) {
			results = append(results, cm)
		}
	}

	fmt.Println(len(results))
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

func cms(n int) []int {
	var results []int
	for i := 1; i <= n; i++ {
		if n % i == 0 {
			results = append(results, i)
		}
	}
	return results
}

func isPrime(n int) bool {
	switch {
	case n < 1:
		return false
	case n == 1:
		return true
	case n == 2 || n == 3 || n == 5:
		return true
	case n & 1 == 0:
		return false
	case n % 2 == 0 || n % 3 == 0 || n % 5 == 0:
		return false
	}

	f := true
	v := 7
	m := int(math.Pow(float64(n), 0.5)) + 1
	for v < m {
		if n % v == 0 {
			return false
		}
		if f {
			v += 4
		} else {
			v += 2
		}
		f = !f
	}
	return true
}
