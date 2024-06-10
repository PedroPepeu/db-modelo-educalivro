using Microsoft.OpenApi.Models;
using System.Security.Claims;

using EducaLivroStudent.DB;
using EducaLivroResponsible.DB;
using EducaLivroOnlineAccount.DB;
using EducaLivroDepartment.DB;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddAuthorization();
builder.Services.AddAuthentication("Bearer").AddJwtBearer();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen(c =>
{
     c.SwaggerDoc("v1", new OpenApiInfo { Title = "EducaLivro API", Description = "Making the best School", Version = "v1" });
});

var app = builder.Build();

app.UseAuthentication();
app.UseAuthorization();

if (app.Environment.IsDevelopment())
{
   app.UseSwagger();
   app.UseSwaggerUI(c =>
   {
      c.SwaggerEndpoint("/swagger/v1/swagger.json", "EducaLivro API V1");
   });
}

app.UseMiddleware<RequestLoggingMiddleware>();

app.MapGet("/", () => "Hello World!");
app.MapGet("/secret", (ClaimsPrincipal user) => $"Hello {user.Identity?.Name}. My secret")
    .RequireAuthorization();

// STUDENTS
app.MapGet("/student", () => StudentDB.GetStudents()).RequireAuthorization();
app.MapGet("/student/{idNum}", (string idNum) => StudentDB.GetStudent(idNum)).RequireAuthorization();
app.MapPost("/student", (Student student) => StudentDB.CreateStudent(student)).RequireAuthorization();
app.MapPut("/student", (Student student) => StudentDB.UpdateStudent(student)).RequireAuthorization();
app.MapDelete("/student/{idNum}", (string idNum) => StudentDB.RemoveStudent(idNum)).RequireAuthorization();

// RESPONSIBLE
app.MapGet("/responsible", () => ResponsibleDB.GetResponsibles());
app.MapGet("/responsible/{cpf}", (string cpf) => ResponsibleDB.GetResponsible(cpf)).RequireAuthorization();
app.MapPost("/responsible", (Responsible responsible) => ResponsibleDB.CreateResponsible(responsible)).RequireAuthorization();
app.MapPut("/responsible", (Responsible responsible) => ResponsibleDB.UpdateResponsible(responsible)).RequireAuthorization();
app.MapDelete("/responsible/{cpf}", (string cpf) => ResponsibleDB.RemoveResponsible(cpf)).RequireAuthorization();

// ONLINE ACCOUNT
app.MapGet("/onlineaccount", () => OnlineAccountDB.GetOnlineAccounts()).RequireAuthorization();
app.MapGet("/onlineaccount/{idNum}", (string idNum) => OnlineAccountDB.GetOnlineAccount(idNum)).RequireAuthorization();
app.MapPost("/onlineaccount", (OnlineAccount onlineAccount) => OnlineAccountDB.CreateOnlineAccount(onlineAccount)).RequireAuthorization();
app.MapPut("/onlineaccount", (OnlineAccount onlineAccount) => OnlineAccountDB.UpdateOnlineAccount(onlineAccount)).RequireAuthorization();
app.MapDelete("/onlineaccount/{idNum}", (string idNum) => OnlineAccountDB.RemoveOnlineAccount(idNum)).RequireAuthorization();

// DEPARTMENT
app.MapGet("/department", () => DepartmentDB.GetDepartment()).RequireAuthorization();
app.MapGet("/department/{idNum}", (string idNum) => DepartmentDB.GetDepartment(idNum)).RequireAuthorization();
app.MapPost("/department", (Department department) => DepartmentDB.CreateDepartment(department)).RequireAuthorization();
app.MapPut("/department", (Department department) => DepartmentDB.UpdateDepartment(department)).RequireAuthorization();
app.MapDelete("/department/{idNum}", (string idNum) => DepartmentDB.RemoveDepartment(idNum)).RequireAuthorization();

app.Run();
