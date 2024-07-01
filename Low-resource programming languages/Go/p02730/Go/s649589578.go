//problem_b.go

package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	//"strings"
)

const (
	mod = int(1e9) + 7
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wr = bufio.NewWriter(os.Stdout)
)

// -----------------------------------------

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getIntSlice(n int) []int {
	ns := []int{}
	for i := 0; i < n; i++ {
		ns = append(ns, getInt())
	}
	return ns
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func getStringSlice(n int) []string {
	ss := []string{}
	for i := 0; i < n; i++ {
		ss = append(ss, getString())
	}
	return ss
}

// -----------------------------------------

// Sort Fanction

func sortIntSlice(ns []int) []int {
	sort.Sort(sort.IntSlice(ns))
	return ns
}

func rsortIntSlice(ns []int) []int {
	sort.Sort(sort.Reverse(sort.IntSlice(ns)))
	return ns
}

// -----------------------------------------

// Num Fanction

//numModPow(a, n, m) == a^n % m
func numModPow(a int, n int, m int) int {
	result := 1

	for n > 0 {
		if n%2 == 1 {
			result = (result * a) % m
		}

		a = (a * a) % m
		n >>= 1
	}

	return result
}

// numGcd(a, b) == gcd(a, b)
func numGcd(a int, b int) int {
	if b == 0 {
		return a
	}

	return numGcd(b, a%b)
}

// numLcm(a, b) == lcm(a, b)
func numLcm(a int, b int) int {
	return a * b / numGcd(a, b)
}

// numModInv(a, p) == a^(-1) % p
func numModInv(a int, p int) int {
	if a == 1 {
		return 1
	} else {
		return p - numModInv(p%a, p)*(p/a)%p
	}
}

// -----------------------------------------

func solve() {

	flag := true

	s := getString()
	n := len(s)

	for i := 0; i <= (n-1)/2; i++ {
		if s[i] != s[n-(1+i)] {
			flag = false
		}
	}

	s1 := s[0 : (n-1)/2]
	n1 := len(s1)

	for i := 0; i <= (n1-1)/2; i++ {
		if s1[i] != s1[n1-(1+i)] {
			flag = false
		}
	}

	s2 := s[((n+3)/2)-1:]
	n2 := len(s2)

	for i := 0; i <= (n2-1)/2; i++ {
		if s2[i] != s2[n2-(1+i)] {
			flag = false
		}
	}

	if flag {
		fmt.Fprintln(wr, "Yes")

	} else {
		fmt.Fprintln(wr, "No")
	}
}

// -----------------------------------------

func main() {
	maxBufSize := int(1e8)
	sc.Buffer(make([]byte, 4096), maxBufSize)
	sc.Split(bufio.ScanWords)
	solve()
	wr.Flush()
}
