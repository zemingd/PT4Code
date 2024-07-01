package main

import"fmt"

func main(){

var nin int

fmt.Scanf(&nin)

nin_ := nin

h := nin_ % (60 * 60)
nin_ /= (60 * 60)

m := nin_ % 60
nin_ /= 60

s := nin_

fmmt.Printf("%d:%d:%d\n", h, m, s)

}
