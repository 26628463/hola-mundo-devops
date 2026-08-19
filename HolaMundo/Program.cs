var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => GetGreeting());

app.Run();

static string GetGreeting()
{
    return "Hola Mundo desde DevOps!";
}