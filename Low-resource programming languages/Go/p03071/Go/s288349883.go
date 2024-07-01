package main
import "fmt"

func main(){
	var a, b uint
	fmt.Scan(&a, &b)
	if b < a {
		if b < a-1 {
			fmt.Println(a+a-1)
		} else if a-1 <= b {
			fmt.Println(a+b)
		}
	} else if a < b {
		if a < b-1 {
			fmt.Println(b+b-1)
		} else if b-1 <= a {
			fmt.Println(a+b)
		}
	} else if a == b {
		fmt.Println(a+b)
	}
}