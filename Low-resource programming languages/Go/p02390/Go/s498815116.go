package main
import (
	"bufio"
	"fmt"
	"os"
)
var r = bufio.NewReader(os.Stdin)
func main() {
	var S int
	fmt.Fscan(r, &S)
	
	h := S / 3600
	min := S % 3600 / 60
	s := S % 60
	fmt.Printf("%d:%d:%d\n",h,min,s)
	
}
