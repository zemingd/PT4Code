package main
 
import (
	"fmt"
)
 
func main() {
	var S string
	fmt.Scanf("%s", &S)
	var T string
	fmt.Scanf("%s", &T)

	var max = 0

	for n:=0 ; n < len(S) - len(T) +1; n++{
		var count = 0
		var str = S[n:n+len(T)]

		for i:=0; i < len(T); i++{
			if T[i] == str[i]{
				count += 1
			}
		}

		if max < count{
			max = count
		}	
	}

	fmt.Printf("%d\n", len(T)-max)
}