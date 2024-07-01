package main
import("fmt")

func main(){
    var s string
    fmt.Scan(&s)
    //s = reverse(s
    pt := len(s)
    for pt > 3 {
        switch(s[pt - 3: pt]){
            case "eam":
                pt -= 5
            case "mer":
                pt -= 7
            case "ase":
                pt -= 5
            case "ser":
                pt -= 6
            default:
                pt = -1
        }
    }

    if pt == 0 {
        fmt.Println("YES")
    } else {
        fmt.Println("NO")
    }
}