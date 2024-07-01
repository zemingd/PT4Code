package main
 
import "fmt"
import "math"
 
func main(){
	var A, B float64
	var N float64
	var a float64
 
	fmt.Scan(&N, &A, &B)
	ab := A+B
	syo := N / ab
	amari := N - math.Floor(syo) * ab

	if A <= float64(amari){
		a = A
	}else {
		a = amari
	}
	// fmt.Println(syo*A, a)
	ans := math.Floor(syo) * A + a
 
	fmt.Println(ans)
}