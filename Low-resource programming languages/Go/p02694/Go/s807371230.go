package main

import "fmt"

func main() {
	var goalDeposit int
	fmt.Scan(&goalDeposit)

	var nowDeposit int = 100

	var years int = 0
	for {
		years++
		nowDeposit = int(float64(nowDeposit) * 1.01)

		if nowDeposit >= goalDeposit {
			break
		}
	}

	fmt.Println(years)
}
