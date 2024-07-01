package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	var a int
	rengasMap := map[int]bool{}
	rengas := []int{}
	for i := 1; i <= n; i++ {
		fmt.Scan(&a)
		rengasMap[a] = true
		rengas = append(rengas, a)
	}

	var breakCount, index int
	index = 1
	for _, renga := range rengas {
		if ok, _ := rengasMap[index]; !ok {
			break
		}
		if index == renga {
			index++
			continue
		}
		breakCount++
	}

	if breakCount == 0 {
		fmt.Println(-1)
	} else {
		fmt.Println(breakCount)
	}

}
