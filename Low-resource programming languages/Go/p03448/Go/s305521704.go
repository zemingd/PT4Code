package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	var count int
	a500, b100, c50, x :=
		func() int { stdin.Scan(); i, _ := strconv.Atoi(stdin.Text()); return i }(),
		func() int { stdin.Scan(); i, _ := strconv.Atoi(stdin.Text()); return i }(),
		func() int { stdin.Scan(); i, _ := strconv.Atoi(stdin.Text()); return i }(),
		func() int { stdin.Scan(); i, _ := strconv.Atoi(stdin.Text()); return i }()
	for a := 0; a < a500; a++ {
		for b := 0; b < b100; b++ {
			for c := 0; c < c50; c++ {
				if x == a*500+b*100+c*50 {
					count++
				}
			}
		}
	}
	fmt.Println(count)
}