package main

import "fmt"

func main() {
	var x int
	fmt.Scan(&x)

	if x <= 2 {
		fmt.Println("2")
		return
	}

	sosu := []int{2}

	for i := 3; ; i++ {
		isSosu := true
		for _, v := range sosu {
			if i%v == 0 {
				isSosu = false
				break
			}
		}
		if isSosu {
			sosu = append(sosu, i)
			if i >= x {
				break
			}
		}
	}
	fmt.Println(sosu[len(sosu)-1])
}
