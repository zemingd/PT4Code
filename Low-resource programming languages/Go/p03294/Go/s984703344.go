package main

import (
	"fmt"
	"reflect"
	"sort"
)

func mergeMap(a, b map[int]bool) map[int]bool {
	for i, v := range b {
		a[i] = v
	}
	return a
}

func primeFactorsSlice(a []int) []int {
	ret := []int{}
	m := map[int]bool{}
	for _, v := range a {
		r := primeFactors(v)
		m = mergeMap(m, r)
	}

	for i := range m {
		ret = append(ret, i)
	}
	sort.Ints(ret)

	return ret
}

func primeFactors(n int) map[int]bool {
	factors := make([]int, 0)
	i := 2
	for i*i <= n {
		r := n % i
		if r != 0 {
			i++
		} else if r == 0 {
			n /= i
			factors = append(factors, i)
		}
	}
	if n > 1 {
		factors = append(factors, n)
	}
	ret := map[int]bool{}
	for _, v := range factors {
		ret[v] = true
	}
	return ret
}

func f(m uint64, a []int) int {
	var ret uint64
	for i := 0; i < len(a); i++ {
		ret += m % uint64(a[i])
	}
	return int(ret)
}

func mul(a []int) uint64 {
	pf := primeFactorsSlice(a)

	ret := uint64(1)
	if reflect.DeepEqual(pf, a) {
		for _, v := range a {
			ret *= uint64(v)
		}
		return ret
	}

	for _, v := range pf {
		ret *= uint64(v)
	}
	return ret
}

func main() {
	var N int

	fmt.Scan(&N)
	var a = make([]int, N)

	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}

	sort.Ints(a)

	fmt.Println(f(mul(a)-1, a))
}
