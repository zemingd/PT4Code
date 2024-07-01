package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	// start := time.Now()
	// maxForKList := make([]float64, n)
	probabilityHash := make(map[int]float64) // key maxForDice, value p
	probabilityList := make([]float64, n)
	accumulatedList := make([]float64, n)
	for i := 0; i < n; i++ {
		var maxForDice int
		fmt.Scanf("%d", &maxForDice)
		p := probabilityHash[maxForDice]
		if p == 0 {
			for j := maxForDice; j > 0; j-- {
				p += float64(j) / float64(maxForDice)
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
		if i == 0 {
			accumulatedList[i] = p
		} else {
			accumulatedList[i] = accumulatedList[i-1] + p
		}

	}
	maxP := 0.0
	for i := 0; i < n-k; i++ {
		p := accumulatedList[i+k] - accumulatedList[i]
		if maxP < p {
			maxP = p
		}
	}
	fmt.Println(accumulatedList)
	// for i := 0; i < n; i++ {
	// 	if maxP < maxForKList[i] {
	// 		maxP = maxForKList[i]
	// 	}
	// }
	fmt.Printf("%f\n", maxP)
	// end := time.Now()
	// fmt.Println("Elapsed time: ", end.Sub(start))
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
