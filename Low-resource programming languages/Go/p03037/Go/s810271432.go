package main

import "fmt"

func main() {
	var cardNum, gateNum int
	fmt.Scan(&cardNum, &gateNum)

	idCards := make([]bool, cardNum)
	for i := 0; i < cardNum; i++ {
		idCards[i] = true
	}

	for i := 0; i < gateNum; i++ {
		var min, max int
		fmt.Scan(&min, &max)
		for i := range idCards {
			if i + 1 < min || i + 1 > max {
				idCards[i] = false
			}
		}
	}

	masterCardNum := 0
	for _, isMasterCard := range idCards {
		if isMasterCard {
			masterCardNum++
		}
	}
	fmt.Println(masterCardNum)
}
