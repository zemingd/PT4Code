package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

const Mod = 1e9 + 7

func main() {
	N, K := ReadInt(), ReadInt()
	A := ReadInts(N)
	var plusNums, minusNums []int
	for i := 0; i < N; i++ {
		if A[i] < 0 {
			minusNums = append(minusNums, A[i])
		} else {
			plusNums = append(plusNums, A[i])
		}
	}

	canMakePlus := false
	if len(plusNums) > 0 {
		if N == K {
			canMakePlus = len(minusNums)%2 == 0
		} else {
			canMakePlus = true
		}
	} else {
		canMakePlus = K%2 == 0
	}

	if !canMakePlus {
		sort.Slice(A, func(i, j int) bool {
			return Abs(A[i]) < Abs(A[j])
		})
		ans := 1
		for i := 0; i < K; i++ {
			ans = (Mod + (ans * A[i])) % Mod
		}
		fmt.Println(ans)
		return
	}

	sort.Sort(sort.Reverse(sort.IntSlice(plusNums)))
	sort.Ints(minusNums)
	ans := 1
	if K%2 == 1 {
		ans *= plusNums[0]
		plusNums = plusNums[1:]
		K--
	}
	pairedNums := []int{}
	for len(plusNums) >= 2 {
		pairedNums = append(pairedNums, plusNums[0]*plusNums[1]%Mod)
		plusNums = plusNums[2:]
	}
	for len(minusNums) >= 2 {
		pairedNums = append(pairedNums, minusNums[0]*minusNums[1]%Mod)
		minusNums = minusNums[2:]
	}
	sort.Sort(sort.Reverse(sort.IntSlice(pairedNums)))
	for i := 0; i < K/2; i++ {
		ans = ans * pairedNums[i] % Mod
	}
	fmt.Println(ans)
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
