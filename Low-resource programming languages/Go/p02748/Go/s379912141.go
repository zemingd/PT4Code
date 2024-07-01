package main

import (
	"fmt"
)

func main() {
	var A, B, M int
	var ap [100000]int
	var bp [100000]int
	var x, y, c, p int

	fmt.Scan(&A, &B, &M)

	// scanner := bufio.NewScanner(os.Stdin)

	amin := 10000000
	for i := 0; i < A; i++ {
		fmt.Scan(&ap[i])
		if amin > ap[i] {
			amin = ap[i]
		}
	}
	// scanner.Scan()
	// tmp1 := strings.Split(scanner.Text(), " ")
	// for k, i := range tmp1 {
	// 	j, _ := strconv.Atoi(i)
	// 	if amin > j {
	// 		amin = j
	// 	}
	// 	ap[k] = j
	// }

	bmin := 100000000
	for i := 0; i < B; i++ {
		fmt.Scan(&bp[i])
		if bmin > bp[i] {
			bmin = bp[i]
		}
	}
	// scanner.Scan()
	// tmp1 = strings.Split(scanner.Text(), " ")
	// for k, i := range tmp1 {
	// 	j, _ := strconv.Atoi(i)
	// 	if bmin > j {
	// 		bmin = j
	// 	}
	// 	fmt.Printf("k:%d\n", k)
	// 	bp[k] = j
	// }

	min := amin + bmin
	// fmt.Println(min)

	for i := 0; i < M; i++ {
		// scanner.Scan()
		// fmt.Sscan(scanner.Text(), &x, &y, &c)
		fmt.Scan(&x, &y, &c)
		p = ap[x-1] + bp[y-1] - c
		// if p < 0 {
		// 	continue
		// }
		// fmt.Printf("%v %v %v %v\n", x, y, c, p)
		if min > p {
			min = p
		}
	}
	// fmt.Printf("A %v \n", ap[0:5])
	// fmt.Printf("B %v %v\n", bp[0:5], bp[1])
	fmt.Println(min)
}
