fn main() {
    for i in 0..1000 * 1000 * 1000 {
        let j = (i as f64) / 9.0;
        if i % (100 * 1000 * 1000) == 0 {
            println!("{j}")
        }
    }
}
