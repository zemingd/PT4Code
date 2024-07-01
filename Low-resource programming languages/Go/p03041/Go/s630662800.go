package main

import (
	"fmt"
)

func main() {
abc126a()
}

func abc126a() {
	var n, k int
	var line string
	fmt.Scanf("%d", &n)
	fmt.Scanf("%d", &k)
	fmt.Scanf("%s", &line)

	ans := fmt.Sprintf("%s%c%s", line[:k-1], line[k-1]-'A'+'a', line[k:])
	fmt.Print(ans)
}
