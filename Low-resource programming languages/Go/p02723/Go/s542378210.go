package main
import (
	"fmt"
)
func main() {
	var s string
	fmt.Scanf("%s", &s)
	answer := coffeeLike(s)
	if answer {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func coffeeLike(s string) bool{
	return s[2] == s[3] && s[4] == s[5]
}