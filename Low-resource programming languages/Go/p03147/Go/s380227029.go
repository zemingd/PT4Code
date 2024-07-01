package main

import (
	"fmt"
		)

func main() {
	var N,m int
	fmt.Scan(&N)
	goalList := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&goalList[i])
	}
	flowerList := make([]int,N)
	//終端に0をつけたリストを作成
	tmpList := make([]int,N+1)

	for {
		for i:=0; i<N; i ++ {
			if flowerList[i] < goalList[i]{
				flowerList[i] = flowerList[i] + 1
				tmpList[i] = 1
			} else {
				tmpList[i] = 0
			}
		}
		for k:=0; k<N+1;k++  {
			if tmpList[k] == 1 && tmpList[k+1] == 0 {
				m++
			}
		}

		if !Contains(tmpList,1) {
			fmt.Println(m)
			break
		}
	}

}

func Contains(a []int, x int) bool {
	for _, n := range a {
		if x == n {
			return true
		}
	}
	return false
}