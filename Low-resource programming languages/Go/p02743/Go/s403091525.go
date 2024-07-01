package main
import "fmt"
// import "math"

func main(){
	var a, b, c float64

	fmt.Scan(&a, &b, &c)

	if 4*a*b < (c-a-b) * (c-a-b) && c>a+b{
		fmt.Println("Yes")
	}else {
		fmt.Println("No")
	}
}