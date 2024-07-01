package main
/*
A P
*/
import (
        "bufio"
        "fmt"
        // "log"
        "os"
        "strconv"
        "strings"
)

func main() {
        stdin := bufio.NewScanner(os.Stdin)
        stdin.Scan()
        line := strings.Split(stdin.Text(), " ")
        a, _ := strconv.Atoi(line[0])
        p, _ := strconv.Atoi(line[1])
        //_,_=a,p
	pa := a*3 + p
	pienum := (pa - pa%2)/2
	fmt.Println(pienum)
}
