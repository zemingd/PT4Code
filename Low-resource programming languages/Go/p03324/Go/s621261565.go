package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	sc.Scan()
	s := strings.Split(sc.Text(), " ")
	D, _ := strconv.Atoi(s[0])
	N, _ := strconv.Atoi(s[1])
	a := 0
	switch D {
	case 0:
		if N != 100 {
			a = N
		}		
	case 1:
		if N != 100 {
			a = N * 100
		}else{
			a = (N-1) * 100
		}		
	case 2:
		if N != 100 {
			a = N * (100 * 100)
		}else{
			a = (N-1) * (100 * 100)
		}
		
	}
	fmt.Print(a)
}