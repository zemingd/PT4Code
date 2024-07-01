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
	var n int
	fmt.Scan(&n)
	ans := "No"
	for i := 0 ; i < n;i ++{
		for j :=0 ; j<n; j++{
			if i*4 + j*7 == n{
				ans = "Yes"
			}
		}
	}
	fmt.Println(ans)
}