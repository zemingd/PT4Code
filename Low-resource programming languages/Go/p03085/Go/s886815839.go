package main
import (
	"bufio"
	"os"
	"fmt"
)

func main(){
	stdin := bufio.NewScanner(os.Stdin)
	var i,o string
	if stdin.Scan(){
		i = stdin.Text()
	}
	switch i {
	case "A":
		o = "T"
	case "T":
		o = "A"
	case "C":
		o = "G"
	case "G":
		o = "C"
	default:
		o = "Unexpected rune"
	}

	fmt.Println(o)
}