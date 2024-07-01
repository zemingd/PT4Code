package main

import (
	"fmt"
	"math/big"
	"reflect"
	"sort"
)

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}

func mLcm(n ...int) int {
	var ret int
	for i, v := range n {
		if i == 0 {
			ret = v
		} else {
			ret = lcm(ret, v)
		}
	}
	return ret
}

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

func f(m int, a []int) int {
	ret := 0
	for i := 0; i < len(a); i++ {
		ret = ret + m%a[i]
	}
	return ret
}

func mul(a []int) *big.Int {
	pf := primeFactorsSlice(a)

	ret := big.NewInt(1)
	if reflect.DeepEqual(pf, a) {
		for _, v := range a {
			ret = ret.Mul(ret, big.NewInt(int64(v)))
		}
		return ret
	}

	for _, v := range append(pf, a...) {
		ret = ret.Mul(ret, big.NewInt(int64(v)))
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

	m := mLcm(a...)
	fmt.Println(f(m-1, a))
}
