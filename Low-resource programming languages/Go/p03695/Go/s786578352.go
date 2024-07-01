package main

import (
	"fmt"
)

func test() {
	var data = []int{1, 400, 800, 1200, 1600, 2000, 2400, 2800, 3200}
	var min int
	var max int

	fmt.Println("Test Starting!")

	min, max = print_min_max(data, 9)
	if min != 8 || max != 8 {
		fmt.Println("test 1 misssing")
	}

	data = []int{399, 799, 1199, 1599, 1999, 2399, 2799, 3199, 3200}
	min, max = print_min_max(data, 9)
	if min != 8 || max != 8 {
		fmt.Println("test 2 misssing")
	}

	data = []int{399, 799, 1199, 1599, 1999, 2399, 2799, 3199}
	min, max = print_min_max(data, 8)
	if min != 8 || max != 8 {
		fmt.Println("test 3 misssing")
	}

	data = []int{800, 810, 820, 830, 840, 850, 860, 870, 880, 890, 900, 910, 920, 930, 940, 950, 960, 970, 980, 990, 3200}
	min, max = print_min_max(data, 21)
	if min != 1 || max != 2 {
		fmt.Println("test 4 misssing")
	}

	data = []int{800}
	min, max = print_min_max(data, 1)
	if min != 1 || max != 1 {
		fmt.Println("test 5 misssing")
	}

	data = []int{800, 3200, 3200}
	min, max = print_min_max(data, 3)
	if min != 1 || max != 3 {
		fmt.Println("test 6 misssing")
	}

	data = []int{1, 400, 800, 1200, 1600, 2000, 2400, 2800, 3200}
	min, max = print_min_max(data, 9)
	if min != 8 || max != 8 {
		fmt.Println("test 7 misssing")
	}
	data = []int{3200, 3200}
	min, max = print_min_max(data, 2)
	if min != 1 || max != 2 {
		fmt.Println("test 8 misssing")
	}
	data = []int{3200, 3200, 3200}
	min, max = print_min_max(data, 3)
	if min != 1 || max != 3 {
		fmt.Println("test 9 missing")
	}
	data = []int{3200, 3200, 3200, 3200, 3200, 3200, 3200, 3200, 3200}
	min, max = print_min_max(data, 9)
	if min != 1 || max != 8 {
		fmt.Println("test 10 missing")
	}
	data = []int{3200, 3200, 100}
	min, max = print_min_max(data, 3)
	if min != 1 || max != 3 {
		fmt.Println("test 11 missing")
	}

	fmt.Println("Test End!")
}

func print_min_max(data []int, N int) (int, int) {
	var rate int = 0
	var colors [9]int

	for i := range colors {
		colors[i] = 0
	}

	for i := 0; i < N; i++ {
		rate = data[i]
		rate = rate / 400
		if rate >= 3200/400 {
			colors[8] += 1
		} else {
			colors[rate] = 1
		}
	}

	var count int = 0
	for i := 0; i < len(colors)-1; i++ {
		count += colors[i]
	}

	min := count
	max := count + colors[8]

	if min == 0 {
		min = 1
	}
	if max >= 8 {
		max = 8
	}
	return min, max
}

func main() {
	var colors [9]int
	var N int
	var rate int = 0
	var test_flg bool = false
	var min, max int

	for i := range colors {
		colors[i] = 0
	}

	if test_flg {
		test()
	} else {
		fmt.Scan(&N)

		for i := 0; i < N; i++ {
			fmt.Scan(&rate)
			rate = rate / 400
			if rate >= 3200/400 {
				colors[8] += 1
			} else {
				colors[rate] = 1
			}
		}
		var count int = 0
		for i := 0; i < len(colors)-1; i++ {
			count += colors[i]
		}

		min = count
		max = count + colors[8]

		if min == 0 {
			min = 1
		}
		if max >= 8 {
			max = 8
		}
	}
	fmt.Print(max)
	fmt.Print(" ")
	fmt.Println(min)
}

// 全部埋まってるときに3200以上が着た時