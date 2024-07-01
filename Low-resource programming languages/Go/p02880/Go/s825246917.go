package main
import (
	"fmt"
)
/*
func main() {
	ans := map[int]bool{}
	for i := 1; i<=100; i++ {
		ans[i] = false
	}
	for y := 1; y <= 9; y++ {
		for x := 1; x <= 9; x++ {
			ans[x*y] = true
		}
	}
	s := `ans := []string{ "No" `
	for i := 1; i<=100; i++ {
		if ans[i] {
			 s += `, "Yes"`
		} else {
			 s += `, "No"`
		}
	}
	s += `}`
	fmt.Println(s)
}
*/

func main() {
	var i int
	fmt.Scanf("%d", &i)
	ans := []string{ "No" , "Yes", "Yes", "Yes", "Yes", "Yes", "Yes", "Yes", "Yes", "Yes", "Yes", "No", "Yes", "No", "Yes", "Yes", "Yes", "No", "Yes", "No", "Yes", "Yes", "No", "No", "Yes", "Yes", "No", "Yes", "Yes", "No", "Yes", "No", "Yes", "No", "No", "Yes", "Yes", "No", "No", "No", "Yes", "No", "Yes", "No", "No", "Yes", "No", "No", "Yes", "Yes", "No", "No", "No", "No", "Yes", "No", "Yes", "No", "No", "No", "No", "No", "No", "Yes", "Yes", "No", "No", "No", "No", "No", "No", "No", "Yes", "No", "No", "No", "No", "No", "No", "No", "No", "Yes", "No", "No", "No", "No", "No", "No", "No", "No", "No", "No", "No", "No", "No", "No", "No", "No", "No", "No", "No"}
	fmt.Println(ans[i])
}


