package main

import (
	"bufio"
	"fmt"
	"os"
)

type Pair struct {
	a, b int
}

func main() {
	N := ReadInt()
	m := make(map[Pair]Pair)
	zeros := 0
	for i := 0; i < N; i++ {
		x, y := ReadInt(), ReadInt()
		if x == 0 && y == 0 {
			zeros++
			continue
		}
		gcd := GCD(x, y)
		x /= gcd
		y /= gcd
		if y < 0 {
			x, y = -x, -y
		}
		if y == 0 && x < 0 {
			x, y = -x, -y
		}
		rot90 := x <= 0
		if rot90 {
			x, y = y, -x
		}
		p := m[Pair{x, y}]
		if rot90 {
			p.a++
		} else {
			p.b++
		}
		m[Pair{x, y}] = p
	}

	ans := 1
	for _, p := range m {
		s := p.a
		t := p.b
		now := 1
		now = now + ModPow(2, s) + Mod - 1
		now %= Mod
		now = now + ModPow(2, t) + Mod - 1
		now %= Mod
		ans *= now
		ans %= Mod
	}
	ans = ans + zeros + Mod - 1
	ans %= Mod
	fmt.Println(ans)
}

func GCD(a, b int) int {
	if b == 0 {
		return a
	}
	return GCD(b, a%b)
}

const Mod = int(1e9) + 7

func ModPow(a, b int) (x int) {
	for x = 1; b > 0; b >>= 1 {
		if b&1 == 1 {
			x = x * a % Mod
		}
		a = a * a % Mod
	}
	return
}
func ModCombination(n, k int) int { return fac[n] * (finv[k] * finv[n-k] % Mod) % Mod }

var fac, finv, inv []int

func init() {
	const MAX = 5 * 1e5
	fac, finv, inv = make([]int, MAX+1), make([]int, MAX+1), make([]int, MAX+1)
	fac[0], fac[1], finv[0], finv[1], inv[1] = 1, 1, 1, 1, 1
	for i := 2; i <= MAX; i++ {
		fac[i] = fac[i-1] * i % Mod
		inv[i] = Mod - inv[Mod%i]*(Mod/i)%Mod
		finv[i] = finv[i-1] * inv[i] % Mod
	}
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int)       { Scan(&i); return }
func ReadString() (s string) { Scan(&s); return }
func ReadInts(n int) []int {
	v := make([]int, n)
	for i := 0; i < n; i++ {
		Scan(&v[i])
	}
	return v
}
