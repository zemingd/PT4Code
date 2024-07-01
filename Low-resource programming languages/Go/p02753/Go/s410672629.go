package main

import(
	"fmt"
)

func main() {
	var inp string
	fmt.Scan(&inp)
	i := 0
	result := true
	var t rune
	for _, c := range inp {
		i += 1
		if i == 1 {
			t = c
		}

		if t != c {
			result = false
			break
		}

	}
	if result == true {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
