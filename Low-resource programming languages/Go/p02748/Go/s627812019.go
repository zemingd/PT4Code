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
	var ap [100000]int
	var bp [100000]int
	var x, y, c, p int

	fmt.Scan(&A, &B, &M)

	scanner := bufio.NewScanner(os.Stdin)

	amin := 10000000
	scanner.Scan()
	tmp1 := strings.Split(scanner.Text(), " ")
	for k, i := range tmp1 {
		j, err := strconv.Atoi(i)
		if err != nil {
			panic(err)
		}
		if amin > j {
			amin = j
		}
		ap[k] = j
	}

	bmin := 100000000
	scanner.Scan()
	tmp1 = strings.Split(scanner.Text(), " ")
	for k, i := range tmp1 {
		j, err := strconv.Atoi(i)
		if err != nil {
			panic(err)
		}
		if bmin > j {
			bmin = j
		}
		bp[k] = j
	}

	min := amin + bmin
	// fmt.Println(min)

	for i := 0; i < M; i++ {
		scanner.Scan()
		fmt.Sscan(scanner.Text(), &x, &y, &c)
		p = ap[x-1] + bp[y-1] - c
		// fmt.Printf("%v %v %v %v\n", x, y, c, p)
		if min > p {
			min = p
		}
	}
	// fmt.Printf("A %v \n", ap[0:5])
	// fmt.Printf("B %v %v\n", bp[0:5], bp[1])

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
