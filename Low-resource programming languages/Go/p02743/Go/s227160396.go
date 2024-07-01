package main
import "fmt"
// import "math"

func main(){
	var a, b, c int64

	fmt.Scan(&a, &b, &c)

	if c>a+b && 4*a*b<(c-a-b)*(c-a-b) {
		fmt.Println("Yes")
	}else {
		fmt.Println("No")
	}

	// if c > a+b && 4*a*b < (c-a-b)*(c-a-b) {
	// 	fmt.Println("Yes")
	// } else {
	// 	fmt.Println("No")
	// }
}