package main

import (
	"bufio"
	"fmt"
	"os"
)

func prime(a int) bool {
	for i := 2; i < a/2+1; i++ {
		if a%i == 0 {
			return false
		}
	}
	return true

}

func main() {
	var wtr = bufio.NewWriter(os.Stdout)
	var X int
	fmt.Scan(&X)
	var p int
	p = X
	for {
		if prime(p) {
			break
		}
		p++
	}
	fmt.Fprintln(wtr, p)
	_ = wtr.Flush()
}
