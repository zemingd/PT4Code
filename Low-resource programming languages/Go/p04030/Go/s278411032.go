package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var r string
	sc.Scan()
	x := sc.Text()
	for i := 0; i < len(x); i++ {
		c := string(x[i])
		switch c {
		case "0", "1":
			r += c
		case "B":
			if r != "" {
				r = r[0 : i-1]
			}
		}
	}
	fmt.Println(r)
}
