package main

import (
	"fmt"
	"math"
)

func main() {
	N := 5
	d := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&d[i])
	}

	var max int
	for i, n := range d {
		digit := digit(n, 1)
		if digit == 0 {
			continue
		}
		if abs(digit-10) > max {
			max = abs(digit - 10)
			d[i] += max
			tmp := d[0]
			d[0] = d[i]
			d[i] = tmp
		} else {
			d[i] += abs(digit - 10)
		}
	}

	d[0] -= max

	var res int
	for i := N - 1; i >= 0; i-- {
		res += d[i]
	}

	fmt.Println(res)
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func digit(num, place int) int {
	r := num % int(math.Pow(10, float64(place)))
	return r / int(math.Pow(10, float64(place-1)))
}

func countDigits(i int) (count int) {
	for i != 0 {

		i /= 10
		count = count + 1
	}
	return count
}
