package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	// Code for C - pushpush
	var N int
	fmt.Scanf("%d", &N)

	sc.Split(bufio.ScanWords)
	var a int
	b := make([]int, 0)
	var flag int = 0
	for i := 0; i < N; i++ {
		a = nextInt()
		if i%2 == 0 {
			b = append(b, a)
			if i != 0 {
				flag = 1
			}
		} else {
			list := []int{a}
			b = append(list, b...)
			flag = 0
		}
	}

	if flag == 1 {
		for i := N - 1; 0 <= i; i-- {
			fmt.Printf("%d", b[i])
			if i > 0 {
				fmt.Printf(" ")
			} else {
				fmt.Printf("\n")
			}
		}
	} else {
		for i := 0; i < N; i++ {
			fmt.Printf("%d", b[i])
			if i < N-1 {
				fmt.Printf(" ")
			} else {
				fmt.Printf("\n")
			}
		}
	}

}
