package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var w, h, x, y float64
	scanner.Scan()
	fmt.Sscan(scanner.Text(), &w, &h, &x, &y)
	fmt.Printf("%v ", w*h/2)
	if x+x == w && y+y == h {
		fmt.Println(1)
	} else {
		fmt.Println(0)
	}
}
