package main

import "fmt"

const mod = 2019

func main() {
	var l, r int
	fmt.Scan(&l, &r)

	if l+1 == r {
		fmt.Println(l * r % mod)
		return
	}

	//mina := mod + 1
	//minb := mod + 1
	l = l % mod
	r = r % mod
	//fmt.Println(50000%mod, 100000%mod)
	if r > 2 || l > 2 {
		fmt.Println(2)
	}
	//for i := l; i <= r; i++ {
	//	if i%mod < mina {
	//		mina = i % mod
	//	}
	//}
	//for i := r; i >= l; i-- {
	//	if i%mod < minb {
	//		minb = i % mod
	//	}
	//}
	//fmt.Println((mina + minb) % mod)

}
