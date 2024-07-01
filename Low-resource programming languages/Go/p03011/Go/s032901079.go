package main

import "fmt"

func main() {
	var time = make([]int, 3)
	for i := range time {
		fmt.Scan(&time[i])
	}

	ans := 1000000
	for i := 0; i < len(time); i++ {
		for j := i + 1; j < len(time); j++ {
			fmt.Println(i, j, time[i], time[j])
			fmt.Println(time[i] + time[j])
			if time[i]+time[j] < ans {
				ans = time[i] + time[j]
			}
		}
	}
	fmt.Println(ans)

}