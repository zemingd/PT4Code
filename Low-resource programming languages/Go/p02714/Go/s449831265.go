package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	var S string
	fmt.Scan(&S)
	SS := make([]string, len(S))
	for i, c := range []rune(S) {
		SS[i] = string(c)
	}
	RS, GS, BS := make([]int, N), make([]int, N), make([]int, N)
	if SS[0] == "R" {
		RS[0] = 1
	} else if SS[0] == "G" {
		GS[0] = 1
	} else if SS[0] == "B" {
		BS[0] = 1
	}
	for i, c := range SS {
		if i == 0 {
			continue
		}
		if c == "R" {
			RS[i] = RS[i-1] + 1
			GS[i] = GS[i-1]
			BS[i] = BS[i-1]
		} else if c == "G" {
			RS[i] = RS[i-1]
			GS[i] = GS[i-1] + 1
			BS[i] = BS[i-1]
		} else if c == "B" {
			RS[i] = RS[i-1]
			GS[i] = GS[i-1]
			BS[i] = BS[i-1] + 1
		}
	}

	ans := 0
	for i := 0; i < N; i++ {
		for j := i + 2; j < N; j++ {
			if (SS[i] == "R" && SS[j] == "B") || (SS[i] == "B" && SS[j] == "R") {
				ans += GS[j] - GS[i]
				if (i+j)%2 == 0 && SS[(i+j)/2] == "G" {
					ans -= 1
				}
			}
			if (SS[i] == "R" && SS[j] == "G") || (SS[i] == "G" && SS[j] == "R") {
				ans += BS[j] - BS[i]
				if (i+j)%2 == 0 && SS[(i+j)/2] == "B" {
					ans -= 1
				}
			}
			if (SS[i] == "B" && SS[j] == "G") || SS[i] == "G" && SS[j] == "B" {
				ans += RS[j] - RS[i]
				if (i+j)%2 == 0 && SS[(i+j)/2] == "R" {
					ans -= 1
				}
			}
		}
	}
	fmt.Println(ans)
}
