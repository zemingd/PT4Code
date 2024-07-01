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
		cnt += strings.Count(string(S[0:i]), "W")
		cnt += strings.Count(string(S[i:len(S)]), "E")
		
		if cnt < ans {
			ans = cnt
		}
	}

	fmt.Println(ans)
}
