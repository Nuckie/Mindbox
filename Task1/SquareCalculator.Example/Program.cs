using SquareCalculatorLib.Figures;

Circle circle = new Circle()
{
    Radius = 1
};

Triangle triangle = new Triangle()
{
    SideA = 10,
    SideB = 10,
    SideC = 14.14
};

Console.WriteLine($"Круг:\nРадиус: {circle.Radius}\nПлощадь: {circle.Square()}");
Console.WriteLine();
Console.WriteLine($"Треугольник:\nСторона A: {triangle.SideA}\nСторона B: {triangle.SideB}\nСторона C: {triangle.SideC}\nПлощадь: {triangle.Square()}");
if (triangle.Rectangular)
{
    Console.WriteLine("Треугольник является прямоугольным!");
}

Console.ReadKey();