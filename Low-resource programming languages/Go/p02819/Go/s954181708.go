ackage main

import "fmt"

func main() {
	var x int
	fmt.Scan(&x)
	
	a := true
	xx := x
	for {
		for b := 2; b <= xx/2; b++ {
			if xx%b == 0 {
				a = false
			}
		}
		if a == true {
			fmt.Println(xx)
			return
		}
		xx++
	}
}