package main

import (

"fmt"

)

func main() {
	var x string
	fmt.Scan(&x)
	n := 0
	switch(x) {
	case "MON":
		n = 6
	case "TUE":
		n = 5
	case "WED":
		n = 4
	case "THU":
		n = 3
	case "FRI":
		n = 2
	case "SAT":
		n = 1
	case "SUN":
		n = 7
	}
	fmt.Println(n)
}


