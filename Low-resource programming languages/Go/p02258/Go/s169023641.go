package main

import (
	"fmt"
	"io"
	"os"
)

func main() {
	var n int
	_, err := fmt.Scan(&n)
	if err != nil {
		os.Exit(1)
	}
	maxv := -20000000000
	var minv int
	_, err = fmt.Scan(&minv)
	if err != nil {
		os.Exit(1)
	}
	var v int
	for {
		_, err := fmt.Scan(&v)
		if err != nil {
			if err == io.EOF {
				break
			}
			os.Exit(1)
		}
		if v-minv > maxv {
			maxv = v - minv
		}
		if v < minv {
			minv = v
		}
	}
	fmt.Println(maxv)
}

