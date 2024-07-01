package main
import (
  "fmt"
  "strings"
)
func main(){
  var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)
	var answer int

	for i := 0; i < n; i++ {
		var be, af string
		for c, r := range s {
			v := string(r)
			if c <= i {
				if !(strings.Contains(be, v)) {
					be = be + v
				}
			}else{
				if !(strings.Contains(af, v)) {
					af = af + v
				}
			}
		}
		fmt.Println("be : af,",be,":",af)

		num := 0
		for _, x := range be {
			y := string(x)
			if strings.Contains(af, y) {
				num++
			}
		}
		if num > answer{
			answer = num
		}
	}
	fmt.Print(answer)
}