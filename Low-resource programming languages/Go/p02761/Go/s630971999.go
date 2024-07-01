package main

import (
	"fmt"
	"strconv"
	"unicode/utf8"
)

func main() {
	N, M := readInt(), readInt()
	sc := make(map[int]int)

	for i := 0; i < M; i++ {
		s, c := readInt(), readInt()

		v, exists := sc[s]
		if exists && v != c {
			fmt.Println(-1)
			return
		}

		sc[s] = c
	}

	answer := ""
	for i := 0; i < N; i++ {
		v, exists := sc[i+1]
		if exists {
			answer += strconv.Itoa(v)
		} else {
			answer += "0"
		}
	}

	v, _ := strconv.Atoi(answer)
	vstr := strconv.Itoa(v)
	vstrlen := utf8.RuneCountInString(vstr)

	if vstrlen > N {
		fmt.Println(-1)
		return
	} else if vstrlen < N {
		for i := 0; i < N-vstrlen; i++ {
			vstr += "0"
		}
	}

	fmt.Println(vstr)
}

func readInt() int {
	var v int
	fmt.Scan(&v)
	return v
}
