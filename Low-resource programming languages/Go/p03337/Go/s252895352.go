package main
import (
	"fmt"
	"strings"
)

func main() {
	var n int
	var s string


	fmt.Scanf("%d",&n)
	fmt.Scanf("%s",&s)

	ans := 0

	for i,_ := range s {
		a := s[0:i+1]
		b := s[i+1:n]

		ans2 := 0
		for j:= 0; j<27; j++ {
			va := strings.Count(a,string(j+97))
			vb := strings.Count(b,string(j+97))
			fmt.Println(string(j+96))
			if va > 0 && vb > 0 {
				ans2++
				
			}
		}
		if ans2 > ans {
			ans = ans2
		}
	}

	fmt.Println(ans)
}
