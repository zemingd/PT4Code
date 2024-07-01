package main

import "fmt"

func main() {
	var (
		num  int
		str1 string
		str2 string
		ans string
	)

	fmt.Scanf("%d", &num)
	fmt.Scanf("%s %s", &str1, &str2)

	for i := 0; i < num; i++ {
		ans += string(str1[i]) + string(str2[i]);
	}

	fmt.Printf("%s", ans)
}
