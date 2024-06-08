using Microsoft.OpenApi.Models;
using EducaLivroStudent.DB;
using EducaLivroResponsible.DB;
using EducaLivroOnlineAccount.DB;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen(c =>
{
     c.SwaggerDoc("v1", new OpenApiInfo { Title = "EducaLivro API", Description = "Making the best School", Version = "v1" });
});

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
   app.UseSwagger();
   app.UseSwaggerUI(c =>
   {
      c.SwaggerEndpoint("/swagger/v1/swagger.json", "EducaLivro API V1");
   });
}

app.MapGet("/", () => "Hello World!");

// STUDENTS
app.MapGet("/student", () => StudentDB.GetStudents());
app.MapGet("/student/{idNum}", (string idNum) => StudentDB.GetStudent(idNum));
app.MapPost("/student", (Student student) => StudentDB.CreateStudent(student));
app.MapPut("/student", (Student student) => StudentDB.UpdateStudent(student));
app.MapDelete("/student/{idNum}", (string idNum) => StudentDB.RemoveStudent(idNum));

// RESPONSIBLE
app.MapGet("/responsible", () => ResponsibleDB.GetResponsibles());
app.MapGet("/responsible/{cpf}", (string cpf) => ResponsibleDB.GetResponsible(cpf));
app.MapPost("/responsible", (Responsible responsible) => ResponsibleDB.CreateResponsible(responsible));
app.MapPut("/responsible", (Responsible responsible) => ResponsibleDB.UpdateResponsible(responsible));
app.MapDelete("/responsible/{cpf}", (string cpf) => ResponsibleDB.RemoveResponsible(cpf));

// ONLINE ACCOUNT
app.MapGet("/onlineaccount", () => OnlineAccountDB.GetOnlineAccounts());
app.MapGet("/onlineaccount/{idNum}", (string idNum) => OnlineAccountDB.GetOnlineAccount(idNum));
app.MapPost("/onlineaccount", (OnlineAccount onlineAccount) => OnlineAccountDB.CreateOnlineAccount(onlineAccount));
app.MapPut("/onlineaccount", (OnlineAccount onlineAccount) => OnlineAccountDB.UpdateOnlineAccount(onlineAccount));
app.MapDelete("/onlineaccount/{idNum}", (string idNum) => OnlineAccountDB.RemoveOnlineAccount(idNum));


app.Run();
