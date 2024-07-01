package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()
	ans := 0
	for i := 0; i < N; i++ {
		a := ReadInt()
		for a&1 == 0 {
			ans++
			a >>= 1
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
