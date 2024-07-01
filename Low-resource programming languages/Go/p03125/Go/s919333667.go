use std::vec::Vec;

fn read<T: std::str::FromStr>() -> T {
    let mut s = String::new();
    std::io::stdin().read_line(&mut s).ok();
    s.trim().parse().ok().unwrap()
}

fn read_vec<T: std::str::FromStr>() -> Vec<T> {
    read::<String>().split_whitespace().map(|e| e.parse().ok().unwrap()).collect()
}

fn main() {
    let (a, b): (i64, i64) = {
      let v = read_vec();
      (v[0], v[1])
    };

    let res
    = if b % a == 0 {
      a + b
    }
    else {
      b - a
    };

    println!("{}", res);
}
