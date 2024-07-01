package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	N, K := ReadInt(), ReadInt()
	A := ReadInts(N)
	var plusCount, minusCount int
	for i := 0; i < N; i++ {
		if A[i] > 0 {
			plusCount++
		} else if A[i] < 0 {
			minusCount++
		}
	}
	if K == N || (plusCount == 0 && K%2 == 1) {
		sort.Slice(A, func(i, j int) bool {
			return A[i] > A[j]
		})
		p := 1
		for i := 0; i < K; i++ {
			p = ModMul(p, A[i])
		}
		fmt.Println(p)
		return
	}
	sort.Slice(A, func(i, j int) bool {
		return Abs(A[i]) > Abs(A[j])
	})
	p := 1
	pSign := 1
	lastMinus := 0
	lastPlus := 0
	for i := 0; i < K; i++ {
		p = ModMul(p, A[i])
		if A[i] == 0 {
			fmt.Println(0)
			return
		}
		if A[i] < 0 {
			pSign *= -1
			lastMinus = A[i]
		} else {
			lastPlus = A[i]
		}
	}
	if pSign == 1 {
		fmt.Println(p)
		return
	}

	nextMinus := 0
	nextPlus := 0
	for i := N - 1; i >= K; i-- {
		if A[i] > 0 {
			nextPlus = A[i]
		} else {
			nextMinus = A[i]
		}
	}

	if Abs(nextPlus*lastPlus) < Abs(lastMinus*nextMinus) {
		p = ModDiv(p, lastPlus)
		p = ModMul(p, nextMinus)
	} else {
		p = ModDiv(p, lastMinus)
		p = ModMul(p, nextPlus)
	}
	fmt.Println(p)
}

const Mod = int(1e9) + 7

func ModMul(a, b int) int  { return (Mod + a%Mod) * (Mod + b%Mod) % Mod }
func ModInverse(n int) int { return ModPow(n, Mod-2) }
func ModDiv(a, b int) int  { return a * ModInverse(b) }
func ModPow(a, b int) (x int) {
	for x = 1; b > 0; b >>= 1 {
		if b&1 == 1 {
			x = x * a % Mod
		}
		a = a * a % Mod
	}
	return
}

func Abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
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
