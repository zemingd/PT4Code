package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var A, B, M int
	// var ap [100000]int
	// var bp [100000]int
	var ap = []int{}
	var bp = []int{}
	// var x [100000]int
	// var y [100000]int
	// var c [100000]int
	var x, y, c, p int
	// var P int
	// var buf [200000]byte
	// var pos, len int

	fmt.Scan(&A, &B, &M)

	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	tmp1 := strings.Split(scanner.Text(), " ")
	for _, i := range tmp1 {
		j, err := strconv.Atoi(i)
		if err != nil {
			panic(err)
		}
		ap = append(ap, j)
	}

	scanner.Scan()
	tmp1 = strings.Split(scanner.Text(), " ")
	for _, i := range tmp1 {
		j, err := strconv.Atoi(i)
		if err != nil {
			panic(err)
		}
		bp = append(bp, j)
	}

	// scanner.Scan()
	// fmt.Scan(&x, &y, &c)
	// fmt.Printf("%v %v %v\n", x, y, c)
	// os.Exit(1)

	// for i := 0; i < A; i++ {
	// 	fmt.Scan(&ap[i])
	// }
	// for i := 0; i < B; i++ {
	// 	fmt.Scan(&bp[i])
	// }

	min := 1000000000
	for i := 0; i < M; i++ {
		scanner.Scan()
		fmt.Sscan(scanner.Text(), &x, &y, &c)
		p = ap[x-1] + bp[y-1] - c
		if min > p {
			min = p
		}
	}
	// fmt.Println(min)

	amin := 10000000
	bmin := 10000000
	for i := 0; i < A; i++ {
		if amin > ap[i] {
			amin = ap[i]
		}
	}
	for i := 0; i < B; i++ {
		if bmin > bp[i] {
			bmin = bp[i]
		}
	}
	if min > amin+bmin {
		min = amin + bmin
	}

	// tmp := 0
	// for i := 0; i < A; i++ {
	// 	// fmt.Println("a")
	// 	for j := 0; j < B; j++ {
	// 		// fmt.Println("b")
	// 		tmp = ap[i] + bp[j]
	// 		valuable_discount := 0
	// 		for k := 0; k < M; k++ {
	// 			// fmt.Printf("m, k:%d, x[k]:%d, y[k]:%d, c[k]:%d\n", k, x[k], y[k], c[k])
	// 			if x[k] == i+1 || y[k] == j+1 {
	// 				// TODO: find most big discount?
	// 				if valuable_discount < c[k] {
	// 					valuable_discount = c[k]
	// 				}
	// 				// fmt.Printf("asdf %d\n", valuable_discount)
	// 			}
	// 		}
	// 		tmp -= valuable_discount
	// 		if min > tmp {
	// 			min = tmp
	// 		}
	// 	}
	// }
	fmt.Println(min)
}
