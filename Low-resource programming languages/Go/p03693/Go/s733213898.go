package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r, g, b := ReadInt(), ReadInt(), ReadInt()
	if (r*100+g*10+b)%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int) { Scan(&i); return }
