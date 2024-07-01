package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	A, B, C, X := ReadInt(), ReadInt(), ReadInt(), ReadInt()
	ans := 0
	for a := 0; a <= A; a++ {
		for b := 0; b <= B; b++ {
			s := 500*a + 100*b
			r := X - s
			if r%50 != 0 {
				continue
			}
			c := r / 50
			if 0 <= c && c <= C {
				ans++
			}
		}
	}
	fmt.Println(ans)
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int) { Scan(&i); return }
