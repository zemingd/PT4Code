package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N, X := ReadInt(), ReadInt()
	cnt := 1
	v := 0
	for i := 0; i < N; i++ {
		v += ReadInt()
		if v <= X {
			cnt++
		} else {
			break
		}
	}
	fmt.Println(cnt)
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int) { Scan(&i); return }
