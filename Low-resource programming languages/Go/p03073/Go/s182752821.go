package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	S := ReadString()
	cnt := 0
	for i, c := range S {
		if i%2 == 0 {
			if c == '1' {
				cnt++
			}
		} else {
			if c == '0' {
				cnt++
			}
		}
	}
	cnt2 := len(S) - cnt
	if cnt < cnt2 {
		fmt.Println(cnt)
	} else {
		fmt.Println(cnt2)
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
