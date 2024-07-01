package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	sc.Scan()
	S := sc.Text()
	sc.Scan()
	Q, _ := strconv.Atoi(sc.Text())

	swap := false
	for i := 0; i < Q; i++ {
		sc.Scan()
		T, _ := strconv.Atoi(sc.Text())

		switch T {
		case 1:
			swap = !swap
		case 2:
			sc.Scan()
			F, _ := strconv.Atoi(sc.Text())
			sc.Scan()
			C := sc.Text()
			switch F {
			case 1:
				if swap {
					S = S + C
				} else {
					S = C + S
				}
			case 2:
				if swap {
					S = C + S
				} else {
					S = S + C
				}
			default:
				panic("invalid")
			}
		default:
			panic("invalid")
		}
	}
	if swap {
		b := []byte(S)
		for i := 0; i < len(b)/2; i++ {
			b[i], b[len(S)-i-1] = b[len(S)-i-1], b[i]
		}
		S = string(b)
	}
	fmt.Println(S)
}
