package main

import (
	"bufio"
	"errors"
	"fmt"
	"io"
	"math"
	"math/big"
	"os"
	"strconv"
)

func main() {
	sc := NewScanner(os.Stdin)
	n, _ := sc.NextInt()
	a, b := make([]int, n), make([]int, n)
	for i := 0; i < n; i++ {
		a[i], _ = sc.NextInt()
		b[i], _ = sc.NextInt()
	}
	ans := solve(n, a, b)
	fmt.Println(ans)
}

const mod = 1000000007

type pair struct {
	x, y int
}

func solve(n int, a, b []int) (ans int64) {
	zero := 0
	count := map[pair]*pair{}
	for i := 0; i < n; i++ {
		x, y := a[i], b[i]
		if x == 0 && y == 0 {
			zero++
			continue
		}
		if y < 0 || y == 0 && x < 0 {
			x, y = rotate180(x, y)
		}
		rot90 := x <= 0
		if rot90 {
			x, y = rotate90(x, y)
		}
		g := gcd(x, y)
		x, y = x/g, y/g
		key := pair{x, y}
		if count[key] == nil {
			count[key] = &pair{}
		}
		if rot90 {
			count[key].y++
		} else {
			count[key].x++
		}
	}

	ans = int64(1)
	for _, v := range count {
		c1, c2 := v.x, v.y
		now := int64(1)
		now = (now + ModPow(int64(2), int64(c1), int64(mod)) - 1) % mod
		now = (now + ModPow(int64(2), int64(c2), int64(mod)) - 1) % mod
		ans = ModMul(ans, now, mod)
	}
	ans = (ans + int64(zero-1)) % mod
	return ans
}

func rotate180(x1, y1 int) (x2, y2 int) {
	return -x1, -y1
}

func rotate90(x1, y1 int) (x2, y2 int) {
	return y1, -x1
}

func gcd(x, y int) int {
	if x < y {
		x, y = y, x
	}
	if y == 0 {
		return x
	}
	return gcd(y, x%y)
}

// Scanner is a wrapper of bufio.Scanner which is customized for competitive programing.
type Scanner struct {
	bufio.Scanner
}

// NewScanner is a constructor for Scanner.
func NewScanner(r io.Reader) *Scanner {
	sc := Scanner{*bufio.NewScanner(r)}
	sc.Buffer([]byte{}, math.MaxInt64)
	sc.Split(bufio.ScanWords)
	return &sc
}

// NextInt reads a integer from io stream.
func (sc *Scanner) NextInt() (int, error) {
	if !sc.Scan() {
		return -1, errors.New("failed to scan")
	}
	return strconv.Atoi(sc.Text())
}

// ModMul returns a*b with mod
func ModMul(a, b, mod int64) int64 {
	if b == 0 {
		return 0
	}
	if a*b/b == a {
		return a * b % mod
	}
	bigA, bigB, bigMod := big.NewInt(a), big.NewInt(b), big.NewInt(mod)
	bigA.Mul(bigA, bigB)
	bigA.Mod(bigA, bigMod)
	return bigA.Int64()
}

// ModPow returns base^n with mod
func ModPow(base, n, mod int64) int64 {
	ans := int64(1)
	for ; n > 0; n >>= 1 {
		if n&1 == 1 {
			ans = ModMul(ans, base, mod)
		}
		base = ModMul(base, base, mod)
	}
	return ans
}
