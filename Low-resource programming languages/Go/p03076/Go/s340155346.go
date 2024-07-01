package main

import "fmt"

func main() {
	var input int
	var max int
	var sum int

	for i := 0; i < 5; i++ {
		fmt.Scan(&input)

		if i == 0 {
			max = input
		}

		if input%10 == 0 {
			sum += input
		} else {
			sum += (input + (10 - input%10))
		}

		if input%10 != 0 && (10-input%10) > (10-max%10) {
			max = input
		}
	}

	var ans int
	if max%10 == 0 {
		ans = sum
	} else {
		ans = sum - (10 - max%10)
	}

	fmt.Print(ans)
}
