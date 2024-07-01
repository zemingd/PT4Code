package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	S, T := ReadString(), ReadString()
	S += S
	for i := 0; i < len(T); i++ {
		ok := true
		for j := 0; j < len(T); j++ {
			if S[i+j] != T[j] {
				ok = false
				break
			}
		}
		if ok {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
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
