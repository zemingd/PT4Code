package main

import (
	"fmt"
	"io"
	"os"
	"runtime"
)

type query struct {
	T int
	F int
	C byte
}

func calc(qq []query, bytes []byte) ([]byte, bool) {
	head := true
	for _, que := range qq {
		if que.T == 1 {
			head = !head
		} else {
			if (head && que.F == 1) || (!head && que.F == 2) {
				bytes = append([]byte{que.C}, bytes...)
			} else {
				bytes = append(bytes, que.C)
			}
		}
	}
	return bytes, head
}

func run(input io.Reader, output io.Writer) int {
	var s string
	fmt.Scanf("%s\n", &s)
	var q int
	fmt.Scanf("%d\n", &q)
	var qq []query
	for i := 0; i < q; i++ {
		var t int
		var f int
		var c byte
		fmt.Scanf("%d", &t)
		if t == 1 {
			if runtime.GOOS == "windows" {
				fmt.Scanf("\n")
			}
		} else {
			fmt.Scanf("%d %c\n", &f, &c)
		}
		qq = append(qq, query{T: t, F: f, C: c})
	}

	bytes := []byte(s)
	bytes, head := calc(qq, bytes)

	if head {
		fmt.Println(string(bytes))
	} else {
		for i := len(bytes) - 1; i >= 0; i-- {
			fmt.Printf("%c", bytes[i])
		}
		fmt.Println()
	}
	return 0
}

func main() {
	os.Exit(run(os.Stdin, os.Stdout))
}
