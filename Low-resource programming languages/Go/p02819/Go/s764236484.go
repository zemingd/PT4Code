package main

import "fmt"

func main() {
	var x int
	fmt.Scan(&x)
	for _, n := range sosuu() {
		if n >= x {
			fmt.Println(n)
			return
		}
	}
}

func sosuu() []int {
	sosuus := []int{2}
outer:
	for i := 3; i < 200000; i++ {
		for n := 0; n < len(sosuus); n++ {
			if i%sosuus[n] == 0 {
				continue outer
			}
		}
		sosuus = append(sosuus, i)
	}
	return sosuus
}
