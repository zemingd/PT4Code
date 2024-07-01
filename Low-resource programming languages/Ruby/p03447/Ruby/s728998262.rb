fn read<T: std::str::FromStr>() -> T {
    let mut buf = String::new();
    std::io::stdin().read_line(&mut buf).ok();
    buf.trim().parse().ok().unwrap()
}

fn main() {
    let x: i32 = read();
    let a: i32 = read();
    let b: i32 = read();
    println!("{}", (x - a) % b);
}
