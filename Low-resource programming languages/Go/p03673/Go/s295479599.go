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
	//b := make([]int, 0)
	var b [1000000]int
	var left int = 499999
	var right int = 500000
	var flag int = 0
	for i := 0; i < N; i++ {
		a = nextInt()
		if i%2 == 0 {
			//b = append(b, a)
			b[right] = a
			right++
			if i != 0 {
				flag = 1
			}
		} else {
			//list := []int{a}
			//b = append(list, b...)
			b[left] = a
			left--
			flag = 0
		}
	}

	if flag == 1 {
		for i := right - 1; left < i; i-- {

			fmt.Printf("%d", b[i])
			if i > left+1 {
				fmt.Printf(" ")
			} else {
				fmt.Printf("\n")
			}
		}
	} else {
		for i := left + 1; i < right; i++ {
			fmt.Printf("%d", b[i])
			if i < right-1 {
				fmt.Printf(" ")
			} else {
				fmt.Printf("\n")
			}
		}
	}
}
