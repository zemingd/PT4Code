package main

import "fmt"

func main() {
	var inputA, inputB int
	fmt.Scanf("%d %d", &inputA, &inputB)

	fmt.Printf("%d\n", leastMultiple(inputA, inputB))
}

func leastMultiple(pA, pB int) int {
	mulA := 1
	mulB := 1
	checkA := pA
	checkB := pB

	var i int
	for i = 0; i < 1000000; i++ {
		if checkA == checkB {
			return checkA
		}

		if checkA > checkB {
			mulB++
			checkB = pB * mulB
		} else {
			mulA++
			checkA = pA * mulA
		}
	}

	return 0
}
