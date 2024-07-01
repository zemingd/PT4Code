package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	_, A, B, C, D := ReadInt(), ReadInt()-1, ReadInt()-1, ReadInt()-1, ReadInt()-1
	S := ReadString()

	// A -> C
	preBlock := false
	for i := A; i <= C; i++ {
		if S[i] == '#' {
			if preBlock {
				fmt.Println("No")
				return
			}
		}
		preBlock = S[i] == '#'
	}

	// B -> D
	preBlock = false
	for i := B; i <= D; i++ {
		if S[i] == '#' {
			if preBlock {
				fmt.Println("No")
				return
			}
		}
		preBlock = S[i] == '#'
	}

	if C < D {
		fmt.Println("Yes")
		return
	}

	// B -> D
	seq := 0
	for i := B - 1; i <= D+1; i++ {
		if S[i] == '.' {
			seq++
			if seq >= 3 {
				fmt.Println("Yes")
				return
			}
		} else {
			seq = 0
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
