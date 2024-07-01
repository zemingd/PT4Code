package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	a := make([]int, N)
	amap := make(map[int]int)

	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
		amap[i] = a[i]
	}

	first := a[0]
	cnt := 1
	for i := 0; i < N; i++ {
		if a[i] < first {
			cnt++
			first = a[i]
		}
	}

	// for i, v1 := range amap {
	// 	for j := i; j < N; j++ {
	// 		if v1 > first {
	// 			continue
	// 		}
	// 		if amap[j] > v1 {
	// 			delete(amap, j)
	// 		}
	// 	}
	// }

	// for i, v1 := range amap {
	// 	j := i
	// 	for {
	// 		if j > len(amap) {
	// 			break
	// 		}
	// 		// if v1 > first {
	// 		// 	j++
	// 		// 	continue
	// 		// }
	// 		if amap[j] > v1 {
	// 			delete(amap, j)
	// 		}
	// 		j++
	// 	}
	// }
	// first := a[0]

	// for i, v1 := range amap {
	// 	for j, v2 := range amap {
	// 		if v1 > first {
	// 			continue
	// 		}
	// 		if j > i && v2 > v1 {
	// 			delete(amap, j)
	// 		}
	// 	}
	// }

	// for i := 0; i < N; i++ {
	// 	elem := a[i]
	// 	for j, v := range amap {
	// 		if elem > first {
	// 			continue
	// 		}
	// 		if j > i && v > elem {
	// 			delete(amap, j)
	// 		}
	// 	}
	// }
	fmt.Println(cnt)
}
