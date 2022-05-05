namespace SquareCalculatorLib.Figures
{
    public class Circle
    {
        public double Radius { get; set; }

        public double Square()
        {
            return Math.Round(Radius * Radius * 3.14, 2);
        }
    }
}
