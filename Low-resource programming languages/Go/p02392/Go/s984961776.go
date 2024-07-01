package main
import (
       "fmt"
       "os"
       "bufio"
       "strconv"
)

func main() {
     sc := bufio.NewScanner(os.Stdin)
     sc.Split(bufio.ScanWords)

     var a, b, c int
     if sc.Scan() {a, _ = strconv.Atoi(sc.Text()) }
     if sc.Scan() {b, _ = strconv.Atoi(sc.Text()) }
     if sc.Scan() {c, _ = strconv.Atoi(sc.Text()) }

     if a < b && b < c {
     	fmt.Println("Yes")
     } else {
	fmt.Println("No")
     }
}
