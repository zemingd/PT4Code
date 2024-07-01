package main

import (
	"fmt"
	"sort"
)

type Shop struct {
	A int
	B int
}

type Shops []Shop

func (shops Shops) Len() int {
	return len(shops)
}

func (shops Shops) Swap(i, j int) {
	shops[i], shops[j] = shops[j], shops[i]
}

func (shops Shops) Less(i, j int) bool {
	return shops[i].A < shops[j].A
}

func main() {
	var N, M int
	_, _ = fmt.Scan(&N, &M)
	var shops Shops = make([]Shop, N)
	for i := 0; i < N; i++ {
		_, _ = fmt.Scan(&shops[i].A, &shops[i].B)
	}
	sort.Sort(shops)
	cnt := 0
	sum := int64(0)
	for i := 0; ; i++ {
		shop := shops[i]
		if cnt + shop.B < M {
			cnt += shop.B
			sum += int64(shop.A * shop.B)
		} else if cnt + shop.B >= M {
			add := M - cnt
			cnt += add
			sum += int64(shop.A * add)
			break
		}
	}
	fmt.Println(sum)
}
