package main

import (
	"fmt"
	"time"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	start := time.Now()
	// maxForKList := make([]float32, n)
	probabilityHash := make(map[int]float32) // key maxForDice, value p
	probabilityList := make([]float32, n)
	for i := 0; i < n; i++ {
		var maxForDice int
		fmt.Scanf("%d", &maxForDice)
		p := probabilityHash[maxForDice]
		if p == 0 {
			for j := maxForDice; j > 0; j-- {
				p += float32(j) / float32(maxForDice)
			}
			probabilityHash[maxForDice] = p
		}
		// for j := i - k + 1; j <= i; j++ {
		// 	if j < 0 {
		// 		continue
		// 	}
		// 	maxForKList[j] += p
		// }
		probabilityList[i] = p
	}
	var maxP float32
	for i := 0; i < n-k; i++ {
		var p float32
		for j := i; j < i+k; j++ {
			p += probabilityList[j]
		}
		if maxP < p {
			maxP = p
		}
	}
	// for i := 0; i < n; i++ {
	// 	if maxP < maxForKList[i] {
	// 		maxP = maxForKList[i]
	// 	}
	// }
	fmt.Printf("%f\n", maxP)
	end := time.Now()
	fmt.Println("Elapsed time: ", end.Sub(start))
}

/*
k = 3
i = 0, j = 0
i = 1, j = 0, 1
i = 2, j = 0, 1, 2
i = 3, j = 1, 2, 3
0 0 0
  1 1 1
	2 2 2
	  3 3 3
*/
