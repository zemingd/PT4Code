package main

import (
	"fmt"
)

var (
	n uint64
)

func main() {
	fmt.Scanf("%d", &n)
	i := uint64(2)
	factors := make([]uint64, 0)

	for i*(i+1) < n {
		if n%i > 0 {
			if i>=3{
				i+=2
			}else{
				i++
			}
		} else {
			n = n / i
			factors = append(factors, i)
		}
	}

	if n > 1 {
		factors = append(factors, n)
	}

	m := make(map[uint64]int)
	for _, v := range factors {
		m[v]++
	}
	factors = []uint64{}
	ans := 0
	for _, v := range m {
		ans += div(v)
	}
	fmt.Println(ans)
}

func div(x int) int {
	// start := 0
	// for x-start+1 >= 0 {
	// 	start++
	// 	x -= start
	// }

	// if x<0{
	// 	start--
	// }
	// return start
	ans:=0
	cur:=x
	for j:=1;j< 10000;j++ {
		if (cur < j) {break};
		ans++; cur -= j;
	}
	return ans
	
}
//2 |  * 2 * 2 | * 2 * 2 * 2 |* 2 * 2 * 2 * 2