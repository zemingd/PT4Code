package main

import  (
    "fmt"
    "os"
    "bufio"
    "strconv"
)

func main(){
    
    var n, v, min, cmax int
    max := -1000000000
    stdin := Atoibufio.NewScanner(os.Stdin)
    
    stdin.Scan()
    n = strconv.Atoi(rune(stdin.Text()))
    
    stdin.Scan()
    min = stdin.Text()

    for i := 1 ; i < n ; i++ {
        
        stdin.Scan()
        v = stdin.Text()

        cmax = v - min
        if max < cmax {
            max = cmax
        }
        if min > v {
            min = v
        }
    }
    fmt.Println(max)
}
