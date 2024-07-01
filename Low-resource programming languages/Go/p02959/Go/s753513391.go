package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n+1)
	for i := 0; i < n+1; i++ {
		fmt.Scan(&a[i])
	}
	b := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&b[i])
	}

	mon := 0
	amari := 0
	for i := 0; i < n+1; i++ {
		ableToKill := amari
		if i < n {
			ableToKill += b[i]
		}

		if a[i] >= ableToKill {
			mon += ableToKill
			amari = 0
		} else {
			if amari >= a[i] {
				if i < n {
					amari = b[i]
				}
			} else {
				amari = ableToKill - a[i]
			}
			mon += a[i]
		}
	}

	fmt.Println(mon)
}
