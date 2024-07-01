package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var (
	N, K int
	A    Nums
)

type Nums []int

func (n Nums) Len() int           { return len(n) }
func (n Nums) Less(i, j int) bool { return n[i] < n[j] }
func (n Nums) Swap(i, j int)      { n[i], n[j] = n[j], n[i] }

func readVariables() {
	N, K = nextInt(), nextInt()
	A = make(Nums, N)
	for i := 0; i < N; i++ {
		A[i] = nextInt()
	}
	sort.Sort(A)
	ng := -1234567890123456789 //-10^18
	ok := 1234567890123456789
	for AbsInt(ok-ng) > 1 {
		mid := (ok + ng) / 2
		v := f(mid)
		// fmt.Println(mid, v)
		if v >= K {
			ok = mid
		} else {
			ng = mid
		}
	}
	// fmt.Println("g(-4, A[0])", -4, A[0], "=", g(-4, A[0]))
	fmt.Println(ok)
}

func g(x, v int) int {
	left, right := v*A[0], v*A[N-1]
	var ok, ng, result int
	if v >= 0 {
		if right <= x {
			return N - 1
		}
		if left > x {
			return 0
		}
		ok, ng = 0, N-1
	} else {
		if left <= x {
			return N - 1
		}
		if right > x {
			return 0
		}
		ok, ng = N-1, 0
	}
	for AbsInt(ok-ng) > 1 {
		mid := (ok + ng) / 2
		w := A[mid] * v
		if w <= x {
			ok = mid
		} else {
			ng = mid
		}
	}
	w := A[ok]
	if v >= 0 {
		result = ok + 1
		if w >= v {
			result--
		}
	} else {
		result = N - ok
		if w <= v {
			result--
		}
	}
	// fmt.Println("g(x,v)", x, v, result)
	return result
}

//f returns #{p <- Pairs | p <= x}
func f(x int) (y int) {
	for _, v := range A {
		y += g(x, v)
	}
	y /= 2
	return
}

func main() {
	readVariables()
}

/* 以下、テンプレート*/

var scanner *bufio.Scanner

func init() {
	scanner = bufio.NewScanner(os.Stdin)
	scanner.Buffer(make([]byte, 0, 1000000), 1000000)
	scanner.Split(bufio.ScanWords)
}

//nextInt converts next token from stdin and returns integer value.
//nextInt panics when conversion into an integer fails.
func nextInt() int {
	if !scanner.Scan() {
		panic("No more token.")
	}
	num, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic("nextInt(): cannot convert to int: " + scanner.Text())
	}
	return num
}

func nextStr() string {
	if !scanner.Scan() {
		panic("No more token.")
	}
	return scanner.Text()
}

// MinInt は、2つの整数を受け取り、最小値を返します。
func MinInt(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}

//MaxInt は、2つの整数を受け取り、最大値を返します。
func MaxInt(x, y int) int {
	if x < y {
		return y
	} else {
		return x
	}
}

//AbsInt は、整数の絶対値を返します。
func AbsInt(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

//ModPow は整数の累乗関数で、剰余もサポートします。
//base^exponentの値をmoduleで割った余りを返します。
//moduloが1以下の場合には、剰余演算をしません。
//baseが負の値である場合には、返す値が負になることがあります。
func ModPow(base, exponent, modulo int) (result int) {
	result = 1
	for exponent > 0 {
		if exponent%2 == 1 {
			result *= base
			if modulo > 1 {
				result %= modulo
			}
		}
		base *= base
		if modulo > 1 {
			base %= modulo
		}
		exponent /= 2
	}
	return
}

//Gcd は、引数の整数全ての最大公約数を返します。
func Gcd(vals ...int) (result int) {
	if len(vals) == 0 {
		return
	}
	result = vals[0]
	for i := 1; i < len(vals); i++ {
		result = gcd(result, vals[i])
	}
	return
}

func gcd(x, y int) int {
	x, y = AbsInt(x), AbsInt(y)
	for y > 0 {
		x, y = y, x%y
	}
	return x
}

//Lcm は、与えられた整数の最小公倍数を返します。
func Lcm(vals ...int) (result int) {
	if len(vals) == 0 {
		return
	}
	result = vals[0]
	for i := 1; i < len(vals); i++ {
		result = lcm(result, vals[i])
	}
	return
}

func lcm(x, y int) int {
	return x * y / gcd(x, y)
}
