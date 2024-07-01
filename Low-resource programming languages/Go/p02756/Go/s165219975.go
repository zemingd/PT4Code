package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Buffer(make([]byte, 0), 1e6)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	S := []byte(sc.Text())
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
			C := []byte(sc.Text())
			switch F {
			case 1:
				if swap {
					S = append(S, C...)
				} else {
					S = add(C, S)
				}
			case 2:
				if swap {
					S = add(C, S)
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

func add(arr []byte, a []byte) []byte {
	ans := make([]byte, len(arr)+len(a))
	for i := 0; i < len(arr); i++ {
		ans[i] = arr[i]
	}
	for i := 0; i < len(a); i++ {
		ans[len(arr)+i] = a[i]
	}
	return ans
}
