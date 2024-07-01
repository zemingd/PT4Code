package main

import (
	"fmt"
	"strconv"
	"strings"
)

func Return(args ...interface{}) int {
	return args[0].(int)
}

func main() {
	var d string
	fmt.Scan(&d)
	N := Return(strconv.Atoi(d))
	ans := 0

	if N == 753 {
		fmt.Println(1)
	}

	for i := 0; i < N; i++ {
		Ns := fmt.Sprint(i)
		if strings.Contains(Ns, "7") && strings.Contains(Ns, "5") && strings.Contains(Ns, "3") && !strings.ContainsAny(Ns, "1246890") {
			ans += 1
		}
	}
	fmt.Println(ans)
}