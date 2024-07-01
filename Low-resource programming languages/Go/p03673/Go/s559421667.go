package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	pushpush()
}

func pushpush() {
	var n = nextInt()
	var a = make([]int,n)
	for i :=0; i<n; i++ {
		a[i] = nextInt()
	}

	for i:=n-1; i>=0; i-=2 {
		fmt.Print(a[i])
		fmt.Print(" ")
	}
	var start = 0
	if n % 2 == 1 {
		start = 1
	}
	for i:=start; i<n; i+=2 {
		fmt.Print(a[i])
		if(i+2<n) {
			fmt.Print(" ")
		}
	}
}