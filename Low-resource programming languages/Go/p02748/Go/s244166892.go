package main

import "fmt"

func main() {
	var countR, countD, countT int
	fmt.Scan(&countR, &countD, &countT)

	priceR := []int{}
	priceD := []int{}

	var input int

	var minR int
	for i := 0; i < countR; i++ {
		fmt.Scan(&input)
		if minR == 0 || minR > input {
			minR = input
		}
		priceR = append(priceR, input)
	}

	var minD int
	for i := 0; i < countD; i++ {
		fmt.Scan(&input)
		if minD == 0 || minD > input {
			minD = input
		}
		priceD = append(priceD, input)
	}

	fmt.Println(minD, minR)

	minPrice := minD + minR

	for i := 0; i < countT; i++ {
		var x, y, c int
		fmt.Scan(&x, &y, &c)
		if price := priceR[x-1] + priceD[y-1] - c; minPrice >= price {
			minPrice = price
		}
	}

	fmt.Println(minPrice)

}
