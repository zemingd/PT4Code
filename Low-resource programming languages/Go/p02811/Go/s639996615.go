package main
import (
    "fmt"
    "bufio"
    "os"
    "strings"
    "strconv"
)

var stdin = bufio.NewScanner(os.Stdin)

func sI() string {
	stdin.Scan()
	return stdin.Text()
}

func main() {
    kx := strings.Split(sI(), " ");
    k,_ := strconv.Atoi(kx[0])
    x,_ := strconv.Atoi(kx[1])
    if(k*500 >= x) {
        fmt.Println("Yes")
    }else{
        fmt.Println("No")
    }
}
