using SquareCalculatorLib.Figures;

//Круг
Circle circle = new Circle()
{
    Radius = 1
};

//Треугольник
Triangle triangle = new Triangle()
{
    SideA = 10,
    SideB = 10,
    SideC = 14.14
};

//Квадрат
Foursquare foursquare = new Foursquare()
{
    Side = 5.2
};

//Вывод результата
Console.WriteLine($"Круг:\nРадиус: {circle.Radius}\nПлощадь: {circle.Square()}\nДлина окружности (периметр): {circle.Perimeter()}");
Console.WriteLine();
Console.WriteLine($"Треугольник:\nСторона A: {triangle.SideA}\nСторона B: {triangle.SideB}\nСторона C: {triangle.SideC}\nПлощадь: {triangle.Square()}\nПериметр: {triangle.Perimeter()}");
if (triangle.Rectangular)
{
    Console.WriteLine("Треугольник является прямоугольным!");
}
Console.WriteLine();
Console.WriteLine($"Квадрат:\nДлина сторон: {foursquare.Side}\nПлощадь: {foursquare.Square()}\nПериметр: {foursquare.Perimeter()}");
Console.ReadKey();