package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
)

const Mod = 1e9 + 7

func main() {
	N, K := ReadInt(), ReadInt()
	A := ReadInts(N)
	var plusNums, minusNums []int
	for i := 0; i < N; i++ {
		if A[i] >= 0 {
			plusNums = append(plusNums, A[i])
		} else {
			minusNums = append(minusNums, A[i])
		}
	}

	canMakePlus := false
	if N == K {
		canMakePlus = len(minusNums)%2 == 0
	} else {
		if len(plusNums) > 0 {
			canMakePlus = true
		} else {
			if K%2 == 0 {
				canMakePlus = true
			}
		}
	}

	if !canMakePlus {
		sort.Slice(A, func(i, j int) bool {
			return Abs(A[i]) < Abs(A[j])
		})
		ans := 1
		for i := 0; i < K; i++ {
			ans = (Mod + ans*A[i]) % Mod
		}
		fmt.Println(ans)
		return
	}

	sort.Sort(sort.Reverse(sort.IntSlice(plusNums)))
	sort.Ints(minusNums)
	fmt.Println(f(K, plusNums, minusNums))
}

func f(K int, plusNums, minusNums []int) int {
	if K == 0 {
		return 1
	}
	if K == 1 {
		return plusNums[0]
	}
	v := math.MinInt64
	if len(plusNums) >= 2 && len(minusNums) >= 2 {
		if plusNums[0]*plusNums[1] > minusNums[0]*minusNums[1] {
			v = Max(v, f(K-2, plusNums[2:], minusNums)*plusNums[0]*plusNums[1]%Mod)
		} else {
			v = Max(v, f(K-2, plusNums, minusNums[2:])*minusNums[0]*minusNums[1]%Mod)
		}
	} else {
		if len(minusNums) >= 2 {
			v = Max(v, f(K-2, plusNums, minusNums[2:])*minusNums[0]*minusNums[1]%Mod)
		}
		v = Max(v, f(K-1, plusNums[1:], minusNums)*plusNums[0]%Mod)
	}
	return v
}

func Max(xs ...int) int {
	max := xs[0]
	for _, x := range xs[1:] {
		if max < x {
			max = x
		}
	}
	return max
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
func ReadInt() (i int) { Scan(&i); return }
func ReadInts(n int) []int {
	v := make([]int, n)
	for i := 0; i < n; i++ {
		Scan(&v[i])
	}
	return v
}
