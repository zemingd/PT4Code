package main

import (
	"bufio"
	"fmt"
	"os"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	var array [7]string = [7]string{"MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"}
	var S string
	var ans int
	if scanner.Scan() {
		S = scanner.Text()
	}
	if S == "SUN" {
		ans = 7
	} else {
		var at = 0
		for true {
			if array[at] == S {
				break
			}
			at++
		}
		ans = 6 - at
	}
	fmt.Println(ans)
}
