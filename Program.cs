var builder = WebApplication.CreateBuilder(args);

var app = builder.Build();

// Configure static file options to serve from root directory
var fileProvider = new Microsoft.Extensions.FileProviders.PhysicalFileProvider(
    Path.Combine(builder.Environment.ContentRootPath));

var staticFileOptions = new Microsoft.AspNetCore.Builder.StaticFileOptions
{
    FileProvider = fileProvider,
    RequestPath = ""
};

var defaultFilesOptions = new Microsoft.AspNetCore.Builder.DefaultFilesOptions
{
    FileProvider = fileProvider
};
defaultFilesOptions.DefaultFileNames.Clear();
defaultFilesOptions.DefaultFileNames.Add("index.html");

// Serve static files (HTML, JS, CSS, images, etc.) from root
app.UseDefaultFiles(defaultFilesOptions);
app.UseStaticFiles(staticFileOptions);

app.Run();
