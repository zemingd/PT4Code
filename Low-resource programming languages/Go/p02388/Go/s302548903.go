	package main
	
import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var sc= bufio.NewScanner( os.Stdin )

func nextInt() int{
    sc.Scan()
    i, e := strconv.Atoi( sc.Text() )
    if e != nil {
        panic(e)
    }
    return i
}

func main() {
	sc.Split( bufio.ScanWords )
	x := nextInt() 
	
	x3 := x * x * x
	
	fmt.Println( x3 )
	
}
