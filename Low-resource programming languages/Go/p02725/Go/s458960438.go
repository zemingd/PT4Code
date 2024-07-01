package main

import (
	"fmt"
	"sort"
)

func main() {

	var k, n, aa int
	a := []int{}
	bef := []int{}
	aft := []int{}

	fmt.Scan(&k, &n)
	for i := 0; i < n; i++ {
		fmt.Scan(&aa)
		a = append(a, aa)
	}
	sub := k / 2
	for i, key := range a {
		if sub <= key {
			bef = a[0:i]
			aft = a[i:n]
			break
		}

	}
	if len(bef) != 0 {
		sort.Sort(sort.IntSlice(bef))
		beflen := len(bef)
		bbb := beflen - 1
		huga := bef[bbb:beflen]
		fmt.Println(huga[0] - bef[0])
	} else if len(aft) != 0 {
		sort.Sort(sort.IntSlice(aft))
		beflen := len(aft)
		bbb := beflen - 1
		huga := aft[bbb:beflen]
		fmt.Println(huga[0] - aft[0])
	} else {
		sort.Sort(sort.IntSlice(bef))
		sort.Sort(sort.IntSlice(aft))
		beflen := len(bef)
		aftlen := len(aft)
		aaa := aftlen - 1
		bbb := beflen - 1
		hoge := aft[aaa:aftlen]
		huga := bef[bbb:beflen]
		piyo := bef[0:1]

		if hoge[0]-piyo[0] < hoge[0]-huga[0] {
			fmt.Println(hoge[0] - piyo[0])
		} else {
			fmt.Println(hoge[0] - huga[0])
		}
	}
}
