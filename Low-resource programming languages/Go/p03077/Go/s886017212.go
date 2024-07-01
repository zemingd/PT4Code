package main
import (
    "bufio"
    "fmt"
    "math"
    "os"
    "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
    if sc.Scan() {
        ret, _ := strconv.Atoi(sc.Text())
        return ret
    }
    return 0
}

func main(){
    n := readInt()
    var capacities [5]int
    min_cap := int(1e15)
    for i := range capacities {
        cap := readInt()
        capacities[i] = cap
        if cap < min_cap {
            min_cap = cap
        }
    }
    
    requiredTime := int(math.Ceil(float64(n) / float64(min_cap))) + 4

    fmt.Println(requiredTime)
}
