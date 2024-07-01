package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	
	a,b := scanInt(),scanInt()

	if a+b > a-b && a+b > a*b {
		fmt.Println(a+b)
	} else if a-b > a+b && a-b > a*b {
		fmt.Println(a-b)
	} else {
		fmt.Println(a*b)
	}
}
