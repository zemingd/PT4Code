package main

import "fmt"
import "strings"

func main() {
	var (
		num  int
		str1 string
		str2 string
	)

	ans := []string{}

	fmt.Scanf("%d", &num)
	fmt.Scanf("%s %s", &str1, &str2)

	for i := 0; i < num; i++ {
		ans = append(ans, str1[i:i+1])
		ans = append(ans, str2[i:i+1])
	}

	var ans_fmt string;
	ans_fmt = strings.Join(ans, "")

	fmt.Printf("%s", ans_fmt)
}
