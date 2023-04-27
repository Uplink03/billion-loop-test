class Billion {
    static public function main() {
        var i:Int;
        for (i in 0 ... 1000 * 1000 * 1000) {
            var j:Float = i / 9.0;
            if (i % (100 * 1000 * 1000) == 0) {
                Sys.println(j);
            }
        }
    }
}
