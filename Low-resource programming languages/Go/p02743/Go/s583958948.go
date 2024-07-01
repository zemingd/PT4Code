package main
import "fmt"
import "math"

func main(){
	var a, b, c float64

	fmt.Scan(&a, &b, &c)

	ab := (math.Sqrt(a) + math.Sqrt(b)) * (math.Sqrt(a) + math.Sqrt(b)) 
	cc := math.Sqrt(c) * math.Sqrt(c)

	if math.Sqrt(c) - (math.Sqrt(a) + math.Sqrt(b)) > 0 {
		fmt.Println("Yes")
	}else {
		fmt.Println("No")
	}
}