package main

import "fmt"

func main() {
	var S []byte

	var Q int

	fmt.Scan(&S, &Q)

	swap := false
	for i := 0; i < Q; i++ {
		var T int

		fmt.Scan(&T)

		switch T {
		case 1:
			swap = !swap
		case 2:
			var F int

			var C []byte

			fmt.Scan(&F, &C)

			switch F {
			case 1:
				if swap {
					S = append(S, C...)
				} else {
					S = append(C, S...)
				}
			case 2:
				if swap {
					S = append(C, S...)
				} else {
					S = append(S, C...)
				}
			default:
				panic("invalid")
			}
		default:
			panic("invalid")
		}
	}
	if swap {
		for i := 0; i < len(S)/2; i++ {
			S[i], S[len(S)-i-1] = S[len(S)-i-1], S[i]
		}
	}
	fmt.Println(string(S))
}
