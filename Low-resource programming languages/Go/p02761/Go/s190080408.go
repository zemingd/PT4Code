package main

import (
	"fmt"
	"strconv"
)

func main() {
	N, M := readInt(), readInt()

	S := map[int]int{}
	for i := 0; i < M; i++ {
		key, value := readInt(), readInt()
		if v, exists := S[key]; exists && v != value {
			fmt.Println("-1")
			return
		}

		if key == 1 && value == 0 {
			fmt.Println("-1")
			return
		}

		S[key] = value
	}

	Result := ""
	for i := 1; i <= N; i++ {
		if v, exists := S[i]; exists {
			Result += strconv.Itoa(v)
		} else {
			Result += "0"
		}
	}

	fmt.Println(Result)

}

func readInt() int {
	var v int
	fmt.Scan(&v)
	return v
}