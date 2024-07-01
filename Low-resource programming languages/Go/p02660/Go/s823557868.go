package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()
	factors := Factorization(N)
	ans := 0
	for i := 0; i < len(factors); i++ {
		cnt := factors[i][1]
		j := 0
		for cnt >= j+1 {
			j++
			cnt -= j
		}
		ans += j
	}
	fmt.Println(ans)
}

func Factorization(n int) [][]int {
	res := [][]int{}
	for i := 2; i*i <= n; i++ {
		if n%i != 0 {
			continue
		}
		cnt := 0
		for n%i == 0 {
			n /= i
			cnt++
		}
		res = append(res, []int{i, cnt})
	}
	if n != 1 {
		res = append(res, []int{n, 1})
	}
	return res
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
