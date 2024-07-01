package main
import "fmt"

func imin(a ...int) (int){
	min := a[0]
    for _, v := range a {
        if v < min {
            min = v
        }
    }
    return min
}

func imax(a ...int) (int){
	max := a[0]
    for _, v := range a {
        if v > max {
            max = v
        }
    }
    return max
}

func main() {
	var a,b,c int
	fmt.Scan(&a, &b, &c)
	fmt.Println(imax(a,b,c)-imin(a,b,c))
}