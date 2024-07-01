package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var rdr = bufio.NewReaderSize(os.Stdin, 10000000)

func readLine() []byte {
	buf := make([]byte, 0, 10000000)
	for {
		l, p, err := rdr.ReadLine()
		if err != nil {
			panic(err)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return buf
}

func readInts() (int, int, int, int, int) {
	s1, _ := rdr.ReadString(' ')
	s1 = strings.TrimSpace(s1)
	N, _ := strconv.Atoi(s1)
	s2, _ := rdr.ReadString('\n')
	s2 = strings.TrimRight(s2, "\n")
	K, _ := strconv.Atoi(s2)

	s3, _ := rdr.ReadString(' ')
	s3 = strings.TrimSpace(s3)
	R, _ := strconv.Atoi(s3)

	s4, _ := rdr.ReadString(' ')
	s4 = strings.TrimSpace(s4)
	S, _ := strconv.Atoi(s4)

	s5, _ := rdr.ReadString('\n')
	s5 = strings.TrimRight(s5, "\n")
	P, _ := strconv.Atoi(s5)

	return N, K, R, S, P
}

func score(hand byte, R, S, P int) int {
	switch hand {
	case 'r':
		return P
	case 's':
		return R
	case 'p':
		return S
	}
	return 0
}

func main() {
	var N, K, R, S, P int
	var T []byte

	N, K, R, S, P = readInts()
	T = readLine()

	fmt.Println("N:", N, "K:", K)
	fmt.Println("R:", R, "S:", S, "P:", P)

	before := make([]byte, K)
	changed := make([]bool, K)
	ans := 0
	for i := 0; i < K; i++ {
		before[i] = T[i]
		ans += score(T[i], R, S, P)
		fmt.Println("i:", i, "ans:", ans, "hand:", string(T[i]))
	}
	for i := K; i < N; i++ {
		if before[i%K] != T[i] {
			ans += score(T[i], R, S, P)
			changed[i%K] = false
		} else {
			if changed[i%K] {
				ans += score(T[i], R, S, P)
				changed[i%K] = false
			} else {
				changed[i%K] = true
			}
		}
		fmt.Println("i:", i, "ans:", ans, "hand:", string(T[i]))

		before[i%K] = T[i]
	}

	fmt.Println(ans)
}
