package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

var (
	x, y int
)

func main() {
	x = readi()
	y = readi()

	for i := 0; i <= x; i++ {
		turu := i
		kame := x - i
		if y == (turu*2 + kame*4) {
			fmt.Println("Yes")
			return
		}
	}

	fmt.Println("No")
}

/*-------------------utilities-------------------*/

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func chmin(x *int, y int) bool {
	if *x > y {
		*x = y
		return true
	}
	return false
}

func chmax(x *int, y int) bool {
	if *x < y {
		*x = y
		return true
	}
	return false
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b int) int {
	return (a * b) / gcd(a, b)
}

func permutations(arr []int) [][]int {
	var helper func([]int, int)
	res := [][]int{}

	helper = func(arr []int, n int) {
		if n == 1 {
			tmp := make([]int, len(arr))
			copy(tmp, arr)
			res = append(res, tmp)
		} else {
			for i := 0; i < n; i++ {
				helper(arr, n-1)
				if n%2 == 1 {
					tmp := arr[i]
					arr[i] = arr[n-1]
					arr[n-1] = tmp
				} else {
					tmp := arr[0]
					arr[0] = arr[n-1]
					arr[n-1] = tmp
				}
			}
		}
	}
	helper(arr, len(arr))
	return res
}

func isPrime(n int) bool {
	if n == 1 {
		return false
	}
	for i := 2; i*i <= n; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}

func divisor(n int) (res []int) {
	for i := 1; i*i <= n; i++ {
		if n%i == 0 {
			res = append(res, i)
			if i*i != n {
				res = append(res, n/i)
			}
		}
	}
	sort.Ints(res)
	return
}

// func searchInts(a []int, k int) int {
// 	return binarySearch(len(a), func(i int) bool {
// 		return a[i] >= k
// 	})
// }

func binarySearch(n int, f func(int) bool) int {
	i, j := 0, n
	for i < j {
		h := int(uint(i+j) >> 1)
		if !f(h) {
			i = h + 1
		} else {
			j = h
		}
	}
	return i
}

/*-------------------init-------------------*/

const (
	INF = 1000000000000000000
	MOD = 1e9 + 7
)

var (
	readString func() string
)

func init() {
	readString = newReadString(os.Stdin)
}

/*-------------------inputs-------------------*/

func readi() int {
	return int(readi64())
}

func readi64() int64 {
	i, err := strconv.ParseInt(readString(), 0, 64)
	if err != nil {
		panic(err.Error())
	}
	return i
}

func readf() float64 {
	f, err := strconv.ParseFloat(readString(), 64)
	if err != nil {
		panic(err.Error())
	}
	return f
}

func newReadString(ior io.Reader) func() string {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)

	return func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
}
