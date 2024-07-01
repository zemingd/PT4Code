package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	X, Y := ReadInt(), ReadInt()
	s := X + Y
	if s%3 != 0 {
		fmt.Println(0)
		return
	}
	n := s / 3
	x := X - n
	if x >= n {
		fmt.Println(1)
		return
	}
	fmt.Println(ModCombination(n, x))
}

const Mod = int(1e9) + 7

func ModCombination(n, k int) int {
	if k < 1 || n < k {
		return 1
	}
	return fac[n] * (finv[k] * finv[n-k] % Mod) % Mod
}

var fac, finv, inv []int

func init() {
	const MAX = 1e6
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
