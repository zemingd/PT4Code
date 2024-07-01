package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()
	var lt, lx, ly int
	for i := 0; i < N; i++ {
		t, x, y := ReadInt(), ReadInt(), ReadInt()
		d := Abs(lx-x) + Abs(ly-y)
		dt := t - lt
		if d <= dt && d%2 == dt%2 {
			lt, lx, ly = t, x, y
			continue
		} else {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
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
