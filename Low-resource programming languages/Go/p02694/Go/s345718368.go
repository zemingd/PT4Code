package main

import "fmt"

func main() {
	var x float64
	fmt.Scan(&x)

	var mon float64
	var ans int
	mon = 100.0
	for {
		if mon >= x {
			break
		}
		mon = float64(int(mon) * 101 / 100)
		ans++
	}

	fmt.Println(ans)
}