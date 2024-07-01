package main

import (
    "fmt"
    "bufio"
    "os"
)

const (
    initialBufSize = 10000
    maxBufSize = 100000+1024
)

func main() {

    scanner := bufio.NewScanner(os.Stdin)
    buf := make([]byte, initialBufSize)
    scanner.Buffer(buf, maxBufSize)
    
    scanner.Scan()
	text := scanner.Text()


	var E0, E1, O0, O1 int
	for i, t := range text {
		if i%2 == 0 {
			if t == '0' {
				E0++
			} else {
				E1++
			}
		} else {
			if t == '0' {
				O0++
			} else {
				O1++
			}
		}
	}
	fmt.Println(min(E0+O1, E1+O0))

}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}