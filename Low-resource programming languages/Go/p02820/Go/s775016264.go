package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	initialBufSize = 1e4
	maxBufSize     = 1e6 + 7
)

var buf []byte = make([]byte, maxBufSize)
var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(buf, maxBufSize)
}

func main() {
	N, K, R, S, P := nextInt(), nextInt(), nextInt(), nextInt(), nextInt()
	T := nextLine()
	// Tn := strings.Split(T, "")
	W := make([]bool, N)
	ans := 0
	v := map[byte]int{
		'r': P,
		'p': S,
		's': R,
	}

	// for i := 0; i < N; i++ {
	// 	if i < K {
	// 		W[i] = true
	// 	} else if T[i] != T[i-K] {
	// 		W[i] = true
	// 	}
	// }

	for i := 0; i < N; i++ {
		if i < K {
			ans += v[T[i]]
		} else if T[i] == T[i-K] {
			if W[i-K] {
				ans += v[T[i]]
			} else {
				W[i] = true
			}
		} else {
			ans += v[T[i]]
		}
	}

	// for i := 0; i < N; i++ {
	// 	if i < K {
	// 		switch Tn[i] {
	// 		case "r":
	// 			W[i] = "p"
	// 		case "p":
	// 			W[i] = "s"
	// 		case "s":
	// 			W[i] = "r"
	// 		}
	// 	} else {
	// 		switch Tn[i] {
	// 		case "r":
	// 			if W[i-K][0] != 'p' {
	// 				W[i] = "p"
	// 			} else if i+K < N && W[i+K][0] != 's' {
	// 				W[i] = "sl"
	// 			} else {
	// 				W[i] = "rl"
	// 			}
	// 		case "p":
	// 			if W[i-K][0] != 's' {
	// 				W[i] = "s"
	// 			} else if i+K < N && W[i+K][0] != 'p' {
	// 				W[i] = "rl"
	// 			} else {
	// 				W[i] = "pl"
	// 			}
	// 		case "s":
	// 			if W[i-K][0] != 'r' {
	// 				W[i] = "r"
	// 			} else if i+K < N && Tn[i+K][0] != 'r' {
	// 				W[i] = "pl"
	// 			} else {
	// 				W[i] = "sl"
	// 			}
	// 		}
	// 	}
	// 	if len(W[i]) == 1 {
	// 		switch W[i] {
	// 		case "r":
	// 			ans += R
	// 		case "p":
	// 			ans += P
	// 		case "s":
	// 			ans += S
	// 		}
	// 	}
	// 	fmt.Println(ans)
	// }
	// fmt.Println(ans, Tn, W)
	fmt.Println(ans)
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
