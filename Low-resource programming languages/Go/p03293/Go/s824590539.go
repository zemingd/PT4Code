package main
import "fmt"

func main() {
	var s,t string
	fmt.Scan(&s, &t)
	ans := false

	for index := range s {
		if s[index:] + s[0:index] == t {
			ans = true
		}
	}

	if ans{
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}
}