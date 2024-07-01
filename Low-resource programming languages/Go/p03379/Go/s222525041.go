package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)

	var N int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d", &N)

	xs := make([]int, N)
	for i := 0; i < N; i++ {
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d", &xs[i])
	}
	sxs := make([]int, N)
	copy(sxs, xs)
	sort.Sort(sort.IntSlice(sxs))
	med1 := sxs[(N-1)/2]
	med2 := sxs[(N-1)/2+1]

	for _, x := range xs {
		if x < med2 {
			fmt.Println(med2)
		} else {
			fmt.Println(med1)
		}
	}
}
