<%-- 
    Document   : index
    Created on : 18/05/2016, 15:27:03
    Author     : Wallace
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculo IMC</title>
    </head>
    <body>
        <h1>Calculo de IMC</h1>
        <form>
            <p><h3>Peso<br><input name="peso" id="peso" type="tel">
            </h3>   
            <h3>Altura<br><input name="altura" id="altura" type="tel"></h3>
            <h3>Sexo
                <select style="width:193px;height:45px;" name="sexo" id="sexo">
                    <option name="sexo1" value="1" id="sexo1">Masculino</option>
                    <option name="sexo2" value="2" id="sexo2">Feminino</option>
                </select>
            </h3>

            <button>Resultado IMC</button>

        </form>
    </body>
    <%
        String valorpeso = request.getParameter("peso");
        String valoraltura = request.getParameter("altura");
        String valorsexo = request.getParameter("sexo");

        float peso = valorpeso == null ? 0 : Float.parseFloat(valorpeso);
        float altura = valoraltura == null ? 0 : Float.parseFloat(valoraltura);
        float sexo = valorsexo == null ? 0 : Float.parseFloat(valorsexo);

        float quadrado = altura * altura;
        float calculo = peso / quadrado;

        if (sexo == 1) {
            if (calculo < 20.7) {
                out.print("Como homem, você está magro com esse indice: " + calculo);
            } else if (calculo >= 20.7 && calculo < 26.4) {
                out.print("Como homem, você está no peso ideal com esse indice: " + calculo);
            } else if (calculo >= 26.4 && calculo < 27.8) {
                out.print("Como homem, você está com sobre peso com esse indice: " + calculo);
            } else if (calculo >= 27.8 && calculo < 31.1) {
                out.print("Como homem, você está com obesidade com esse indice: " + calculo);
            } else if (calculo > 31.1) {
                out.print("Como homem, você está com obesidade grave com esse indice: " + calculo);
            }
        }
        if (sexo == 2) {
            if (calculo < 19.1) {
                out.print("Como mulher, você está magro com esse indice: " + calculo);
            } else if (calculo >= 19.1 && calculo < 25.8) {
                out.print("Como mulher, você está no peso ideal com esse indice: " + calculo);
            } else if (calculo >= 25.8 && calculo < 27.3) {
                out.print("Como mulher, você está com sobre peso com esse indice: " + calculo);
            } else if (calculo >= 27.3 && calculo < 32.3) {
                out.print("Como mulher, você está com obesidade com esse indice: " + calculo);
            } else if (calculo > 32.3) {
                out.print("Como mulher, você está com obesidade grave com esse indice: " + calculo);
            }
        }
    %>
</html>
