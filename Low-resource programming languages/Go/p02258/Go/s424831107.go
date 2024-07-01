package main

import  (
    "fmt"
    "bufio"
    "os"
    "strconv"
)

func main(){
    
    sc := bufio.NewScanner(os.Stdin)
    sc.Scan()
    
    var n, v, min, cmax int
    max := -1000000000
    
    n, _ = strconv.Atoi(sc.Text())
    min, _ = strconv.Atoi(sc.Text())

    for i := 1 ; i < n ; i++ {
        v, _ = strconv.Atoi(sc.Text())
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

