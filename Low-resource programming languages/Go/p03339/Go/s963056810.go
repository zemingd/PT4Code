package main

import (
	"bufio"
	"fmt"
	"os"
)

var rdr = bufio.NewReaderSize(os.Stdin, 10000000)

func readLine() string {
	buf := make([]byte, 0, 10000000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func main() {
	_, S := readLine(), readLine()

	fmt.Printf("%d\n", ABC098C(S))
}

// ABC098C ...
func ABC098C(S string) int {
  	w, e := []int{0}, []int{0}
  
	for i := 1; i < len(S); i++ {
		if S[i-1] == 'W' {
			w = append(w, w[i-1]+1)
		} else {
			w = append(w, w[i-1])
		}
	}

	for i := len(S) - 2; i >= 0; i-- {
		if S[i+1] == 'E' {
			e = append([]int{e[0] + 1}, e...)
		} else {
			e = append([]int{e[0]}, e...)
		}
	}

	res := len(S)
	for leader := 0; leader < len(S); leader++ {
		tmp := w[leader] + e[leader]
		if tmp < res {
			res = tmp
		}
	}

	return res
}
