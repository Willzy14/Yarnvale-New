var builder = WebApplication.CreateBuilder(args);

var app = builder.Build();

// Serve static files (HTML, JS, CSS, images, etc.)
app.UseDefaultFiles();
app.UseStaticFiles();

// Configure MIME types for service worker
var provider = new Microsoft.AspNetCore.StaticFiles.FileExtensionContentTypeProvider();
provider.Mappings[".js"] = "application/javascript";

app.Run();
