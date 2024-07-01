package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var isProduct = false

var dp [][][]bool
var N, K, M int
var count int

func dfs(a, b, c int) {
	if a < b && b < c && a < c {
		count++
	} else {
		if c < b && b < a && c < a {
			count++
		}
	}
}

func main() {
	nextReader = newScanner()
	N = nextInt()

	ns := nextInts(N)

	for i := 3; i < N; i++ {
		a := ns[i]
		b := ns[i]
		c := ns[i]

		dfs(a, b, c)
	}

}

/* --------------------------------------------------------------------------
 *  sort
 * ------------------------------------------------------------------------- */

// type S struct {
//   sort int
// }
// type Sorter []S

// func (a Sorter) Len() int           { return len(a) }
// func (a Sorter) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
// func (a Sorter) Less(i, j int) bool { return a[i].sort < a[j].sort }

// type Sorter []Sortable

// func (a Sorter) Len() int           { return len(a) }
// func (a Sorter) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
// func (a Sorter) Less(i, j int) bool { return a[i].Axis < a[j].Axis }

/* --------------------------------------------------------------------------
 *  math
 * ------------------------------------------------------------------------- */
func lcm(x, y int) int {
	return x * y / gcd(x, y)
}

func gcd(x, y int) int {
	tmp := x % y
	if tmp > 0 {
		return gcd(y, tmp)
	} else {
		return y
	}
}

func abs(i int) int {
	return int(math.Abs(float64(i)))
}

//prime
type PrimeGenerator struct {
	Next func() uint32
}

func NewPrimeGenerator() *PrimeGenerator {
	primeGenerator := PrimeGenerator{}

	multiples := map[uint32]uint32{}
	var num uint32
	var d uint32 // ←ココ
	primeGenerator.Next = func() uint32 {
		if num == 0 {
			num = 1
			return 2
		}
		if d == 0 { // ←ココ
			d = 4
			return 3
		}

		for {
			num += d
			d = 6 - d
			var k uint32 = 2 // ←ココ

			factor, hasFactor := multiples[num]
			if hasFactor {
				delete(multiples, num)
				// ↓ココ
				if (num+factor)%3 == 0 {
					k = 1
				}
			} else {
				factor = num
			}

			// ↓ココ
			for newNum := num + (factor << k); ; newNum += factor << k {
				_, hasNewFactor := multiples[newNum]
				if !hasNewFactor {
					multiples[newNum] = factor
					break
				}
				k ^= 3 // ←ココ
			}

			if !hasFactor {
				return num
			}
		}
	}

	return &primeGenerator
}

/* --------------------------------------------------------------------------
 *  debug
 * ------------------------------------------------------------------------- */
func debugln(s ...interface{}) {
	if !isProduct {
		fmt.Println(s...)
	}
}

func debug(s ...interface{}) {
	if !isProduct {
		fmt.Print(s...)
	}
}
func debugf(f string, s ...interface{}) {
	if !isProduct {
		fmt.Printf(f, s...)
	}
}

/* --------------------------------------------------------------------------
 *  std.io
 * ------------------------------------------------------------------------- */
var nextReader func() string

func newScanner() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	return func() string {
		r.Scan()
		return r.Text()
	}
}
func nextString() string {
	return nextReader()
}
func nextInt64() int64 {
	v, _ := strconv.ParseInt(nextReader(), 10, 64)
	return v
}
func nextInt() int {
	v, _ := strconv.Atoi(nextReader())
	return v
}
func nextInts(n int) []int {
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}
func nextInt64s(n int) []int64 {
	r := make([]int64, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt64()
	}
	return r
}
func nextFloat64() float64 {
	f, _ := strconv.ParseFloat(nextReader(), 64)
	return f
}

func maxInt(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

/* --------------------------------------------------------------------------
 *  memo
 * ------------------------------------------------------------------------- */
