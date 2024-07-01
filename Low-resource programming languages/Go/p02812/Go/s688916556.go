package main
import (
	"fmt"
	"strings"
)
func main()  {

	var S string
	var x int
	fmt.Scan(&x,&S)
	fmt.Println(strings.Count(S,"ABC"))

}

