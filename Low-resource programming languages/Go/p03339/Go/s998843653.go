package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	S := sc.Text()

	ans := N
	for i := 0; i < N; i++ {
		cnt := 0
		if string(S[i]) == "W" {
			cnt += strings.Count(string(S[0:i]), "W")
		}
		if string(S[i]) == "W" {
			cnt += strings.Count(string(S[i:len(S)]), "E")
		}

		if string(S[i]) == "E" {
			cnt += strings.Count(string(S[0:i]), "E")
		}
		if string(S[i]) == "E" {
			cnt += strings.Count(string(S[i:len(S)]), "W")
		}
		if string(S[i]) == "E" {
			cnt += strings.Count(string(S[i:len(S)]), "E")
		}

		fmt.Println(string(S[i]), cnt)
		if cnt < ans {
			ans = cnt
		}
	}

	fmt.Println(ans)
}