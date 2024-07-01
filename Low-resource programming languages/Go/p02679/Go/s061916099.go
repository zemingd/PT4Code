package main

import (
	"bufio"
	"fmt"
	"os"
)

type Pair struct{ s, t int }

func main() {
	N := ReadInt()
	m := make(map[[2]int]Pair)
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
		pair := m[[2]int{x, y}]
		if rot90 {
			pair.s++
		} else {
			pair.t++
		}
		m[[2]int{x, y}] = pair
	}
	ans := 1
	for _, pair := range m {
		now := 1
		now += ModPow(2, pair.s) + Mod - 1
		now += ModPow(2, pair.t) + Mod - 1
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

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int) { Scan(&i); return }
