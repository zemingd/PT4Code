package main

import (
	// "bufio"
	"fmt"
	// "os"
	// "strconv"
	"math"
)

type height struct {
	human int
	step  int
}

func (h height) Sum() int {
	return h.human + h.step
}

func main() {
	// var N int
	// fmt.Scan(&N)

	// A := make([]height, N)

	// for i := 0; i < N; i++ {
	// 	fmt.Scan(&A[i].human)
	// }

	// // scanner := bufio.NewScanner(os.Stdin)
	// // for i := 0; i < N && scanner.Scan(); i++ {
	// // 	A[i].human, _ = strconv.Atoi(scanner.Text())
	// // }
	// sum, tmp := 0, 0
	// for i := 0; i < N-1; i++ {
	// 	if A[i+1].human >= A[i].Sum() {
	// 		continue
	// 	}
	// 	tmp = A[i].Sum() - A[i+1].human
	// 	A[i+1].step = tmp
	// 	sum += tmp
	// }

	// fmt.Println(sum)

	var N int
	fmt.Scan(&N)
	human := make([]int, N)
	// step := make([]int, N)

	for i := 0; i < N; i++ {
		fmt.Scan(&human[i])
	}
	sum := 0
	var Max int
	for i := 0; i < N; i++ {
		Max = int(math.Max(float64(human[i]), float64(Max)))
		sum += Max - human[i]
	}
	fmt.Println(sum)

}
