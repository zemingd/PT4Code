package main

import(
	"fmt"
)

func main() {
	var n int
	var s string
	var ac, wa, tle, re int
	fmt.Scanf("%d", &n)
	
	for i := 0; i < n; i++ {
		fmt.Scanf("%s", &s)
		if (s == "AC") {
			ac++
		} else if (s == "WA") {
			wa++
		} else if (s == "TLE") {
			tle++
		} else {
			re++
		}
	}

	fmt.Printf("AC x %d\n", ac)
	fmt.Printf("WA x %d\n", wa)
	fmt.Printf("TLE x %d\n", tle)
	fmt.Printf("RE x %d\n", re)
}