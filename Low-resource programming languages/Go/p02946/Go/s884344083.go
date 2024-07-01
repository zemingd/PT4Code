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
	
	k,x := scanInt(),scanInt()
	var begin,end int

	if -1000001 < x-k+1 {
		begin = x-k+1
	} else {
		begin = -1000000
	}

	if 1000001 > x+k {
		end = x+k
	} else {
		end = 1000000
	}

	for i := begin; i < end; i++ {
		fmt.Print(i)
		if i == end {
			fmt.Println()
		} else {
			fmt.Print(" ")
		}
	}
}
