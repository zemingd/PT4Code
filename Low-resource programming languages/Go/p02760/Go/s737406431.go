package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	A := make([][]int, 3)
	for i := 0; i < 3; i++ {
		A[i] = ReadInts(3)
	}
	N := ReadInt()
	b := ReadInts(N)
	x := make([][]bool, 3)
	for i := 0; i < 3; i++ {
		x[i] = make([]bool, 3)
	}
	for _, bi := range b {
		for i := 0; i < 3; i++ {
			for j := 0; j < 3; j++ {
				if A[i][j] == bi {
					x[i][j] = true
				}
			}
		}
	}

	for i := 0; i < 3; i++ {
		if x[i][0] && x[i][1] && x[i][2] {
			fmt.Println("Yes")
			return
		}
	}
	for i := 0; i < 3; i++ {
		if x[0][i] && x[1][i] && x[2][i] {
			fmt.Println("Yes")
			return
		}
	}
	if x[0][0] && x[1][1] && x[2][2] {
		fmt.Println("Yes")
		return
	}
	if x[0][2] && x[1][1] && x[2][0] {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
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
