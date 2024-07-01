package main
import . "fmt"

func main() {
	var N, A, B int
	Scan(&N, &A, &B)
	var ans int = N * A
	if ans > B {
		Println(B)
	} else{
		Println(ans)
	}
}