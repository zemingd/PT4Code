package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)

	if len(S) == 0 {
		fmt.Println("NO")
		return
	}

	for {
		if len(S) == 0 {
			fmt.Println("YES")
			return
		}

		if len(S) >= 7 {
			pre7 := S[0:7]
			if pre7 == "dreamer" {
				S = S[7:]
				continue
			}
		}

		if len(S) >= 6 {
			pre6 := S[0:6]
			if pre6 == "eraser" {
				S = S[6:]
				continue
			}
		}

		if len(S) >= 5 {
			pre5 := S[0:5]
			if pre5 == "dream" || pre5 == "erase" {
				S = S[5:]
				continue
			}
		}

		fmt.Println("NO")
		return
	}
}