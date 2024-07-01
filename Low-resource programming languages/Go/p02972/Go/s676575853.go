package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()
	a := ReadInts(N)
	b := make([]int, 0)
	s := make([]int, N)
	for i := N; i >= 1; i-- {
		if s[i-1]%2 != a[i-1] {
			b = append(b, i)
			nums := Divisors(i)
			for _, num := range nums {
				s[num-1]++
			}
		}
	}
	if len(b) == 0 {
		fmt.Println(0)
		return
	}
	fmt.Println(len(b))
	for i, bi := range b {
		if i > 0 {
			fmt.Printf(" ")
		}
		fmt.Printf("%d", bi)
	}
	fmt.Println()
}

func Divisors(n int) []int {
	ret := make([]int, 0)
	for i := 1; i*i <= n; i++ {
		if n%i == 0 {
			ret = append(ret, i)
			if i*i != n {
				ret = append(ret, n/i)
			}
		}
	}
	return ret
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
