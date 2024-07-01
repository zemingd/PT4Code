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
	C string
}

func reverse(s string) string {
	r := ""
	for i := len(s) - 1; i >= 0; i-- {
		r += string(s[i])
	}
	return r
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
		var c string
		fmt.Scanf("%d", &t)
		if t == 1 {
			if runtime.GOOS == "windows" {
				fmt.Scanf("\n")
			}
		} else {
			fmt.Scanf("%d %s\n", &f, &c)
		}
		qq = append(qq, query{T: t, F: f, C: c})
	}

	head := true
	for _, que := range qq {
		if que.T == 1 {
			head = !head
		} else {
			if (head && que.F == 1) || (!head && que.F == 2) {
				s = que.C + s
			} else {
				s = s + que.C
			}
		}
	}

	if head {
		fmt.Println(s)
	} else {
		for i := len(s) - 1; i >= 0; i-- {
			fmt.Print(string(s[i]))
		}
		fmt.Println()
	}
	return 0
}

func main() {
	os.Exit(run(os.Stdin, os.Stdout))
}
