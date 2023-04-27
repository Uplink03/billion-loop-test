class Billion {
    public static void main(String[] args) {
        for (int i = 0; i < 1000 * 1000 * 1000; i++)
        {
            double j = i / 9.0;
            if (i % (100 * 1000 * 1000) == 0)
            {
                System.out.println(j);
            }
        }
    }
}
